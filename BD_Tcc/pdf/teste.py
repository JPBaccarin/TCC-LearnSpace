import PyPDF2
import json
import re

def extrairQuestoesENEM(caminho_arquivo):
    questoes_enem = []
    questao_id = 1  # Inicialize o ID da questão

    with open(caminho_arquivo, 'rb') as arquivo:
        pdf_reader = PyPDF2.PdfReader(arquivo)
        num_paginas = len(pdf_reader.pages)

        for pagina in range(num_paginas):
            pagina_pdf = pdf_reader.pages[pagina]
            texto_pagina = pagina_pdf.extract_text()
            questoes = re.split(r'Questão\s+\d+', texto_pagina)[1:]

            for questao_text in questoes:
                questao_info = extrairInfoQuestao(questao_text, questao_id)
                if questao_info:
                    questoes_enem.append(questao_info)
                    questao_id += 1  # Incremente o ID da questão
        
    return questoes_enem

def extrairInfoQuestao(questao_text, questao_id):
    info = {"id": questao_id}  # Adicione o ID da questão ao dicionário
    lines = [line.strip() for line in questao_text.split('\n') if line.strip()]
    
    if len(lines) >= 6:
        # Encontra o número da questão
        match = re.match(r'^\d+', lines[0])
        if match:
            info["numero_questao"] = int(match.group(0))
        
        # Inicialização das variáveis do enunciado e dos parágrafos
        enunciado_atual = ""
        paragrafos_enunciado = []

        for linha in lines[1:]:
            if re.match(r'^[A-E]\s[ *]', linha):
                # A linha indica o início de uma opção de resposta
                break
            if re.match(r'^[A-E]\s  *', linha):
                # A linha indica o início de um novo parágrafo do enunciado
                if enunciado_atual:
                    paragrafos_enunciado.append(enunciado_atual)
                enunciado_atual = linha
            else:
                enunciado_atual += "\n" + linha

        # Certifique-se de adicionar o último parágrafo do enunciado, se houver
        if enunciado_atual:
            paragrafos_enunciado.append(enunciado_atual)

        info["enunciado"] = "\n".join(paragrafos_enunciado)
        
        # Encontra as opções de resposta e a resposta correta
        opcoes_resposta = []
        resposta_correta = None

        for linha in lines[len(paragrafos_enunciado) + 1:]:
            match_opcao = re.match(r'^[A-E]\s[ *]', linha)
            if match_opcao:
                if resposta_correta is None:
                    resposta_correta = match_opcao.group(0)
                opcoes_resposta.append(linha)
        
        info["opcoes_resposta"] = opcoes_resposta
        info["resposta_correta"] = resposta_correta
    
    info["categoria"] = classificarQuestao(info.get("enunciado", ""))
    info["vestibular"] = "ENEM"
    return info

def classificarQuestao(enunciado):
    # Adapte ou expanda a função classificarQuestao conforme necessário
    # Por padrão, retorna 'Desconhecido'
    return 'Desconhecido'

# Caminho do arquivo PDF do ENEM
caminho_arquivo = "enem_2020__dia_1.pdf"

# Extrair questões do PDF do ENEM
questoes_enem = extrairQuestoesENEM(caminho_arquivo)

# Salvar as questões em um arquivo JSON
with open('enem_questions.json', 'w', encoding='utf-8') as json_file:
    json.dump(questoes_enem, json_file, ensure_ascii=False, indent=4)
