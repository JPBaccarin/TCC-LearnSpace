import { useState, FormEvent } from 'react';
import RegistroModal from './registermodal';

export default function Registro() {
  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');
  const [dataNasc, setDataNasc] = useState('');
  const [registroSucesso, setRegistroSucesso] = useState(false);

  const handleRegistro = async (e: FormEvent) => {
    e.preventDefault();
  
    // Aqui você pode enviar os dados do formulário para a sua API de registro
    const response = await fetch('http://localhost:3001/signup', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ nome, email, senha, data_nasc: dataNasc }),
    });
  
    if (response.status === 201) {
      console.log('Usuário registrado com sucesso!');
      setRegistroSucesso(true);
      // Redirecione o usuário para a página de login ou outra página relevante.
    } else {
      console.error('Erro ao registrar usuário.');
    }
  };
  

  return (
    <div className=" text-white flex items-center justify-center">
      <div className="bg-gray-800 p-8 rounded shadow-md w-96">
        <h1 className="text-2xl font-bold mb-4">Registro</h1>
        <form onSubmit={handleRegistro}>
          <div className="mb-4">
            <label className="block ">Nome:</label>
            <input
              type="text"
              className=" rounded w-full p-2 bg-gray-700"
              value={nome}
              onChange={(e) => setNome(e.target.value)}
            />
          </div>
          <div className="mb-4">
            <label className="block ">Email:</label>
            <input
              type="email"
              className=" rounded w-full p-2 bg-gray-700"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
          </div>
          <div className="mb-4">
            <label className="block ">Senha:</label>
            <input
              type="password"
              className=" rounded w-full p-2 bg-gray-700"
              value={senha}
              onChange={(e) => setSenha(e.target.value)}
            />
          </div>
          <div className="mb-4">
            <label className="block ">Data de Nascimento:</label>
            <input
              type="date"
              className=" rounded w-full p-2 bg-gray-700"
              value={dataNasc}
              onChange={(e) => setDataNasc(e.target.value)}
            />
          </div>
          <button type="submit" className="bg-blue-500 text-white rounded p-2 w-full hover:bg-blue-600">
            Registrar
          </button>
        </form>
      </div>
      <RegistroModal success={registroSucesso} onClose={() => setRegistroSucesso(false)} />
    </div>
  );
}
