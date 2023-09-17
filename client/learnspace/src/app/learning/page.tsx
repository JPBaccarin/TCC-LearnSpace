import Cardpost from '@/components/learning/Cardpost'
import Filtercomponent from '@/components/learning/Filtercomponent'
import React from 'react'


const cardsData = [
    {
        title: 'Geometria Euclidiana: Fundamentos e Aplicações',
        content:
            'Neste artigo, exploramos os princípios fundamentais da geometria euclidiana, desde os postulados de Euclides até suas aplicações práticas na vida cotidiana e na engenharia.',
        imageUrl: 'https://img2.freepng.es/20180326/kke/kisspng-euclid-s-elements-euclidean-geometry-circle-triang-euclidean-5ab9abd0371dd6.8358402615221175842258.jpg',
        imageAlt: 'Imagem do Artigo 1',
        linkUrl: 'https://exemplo.com/artigo1',
    },
    {
        title: 'A História dos Números: Dos Números Naturais aos Complexos',
        content:
            'Este artigo traça a evolução dos números ao longo da história, desde os números naturais até os números complexos. Abordamos também suas propriedades e usos.',
        imageUrl: 'https://files.cursoenemgratuito.com.br/uploads/2019/04/conjuntos-numericos-diagrama-de-venn.jpg',
        imageAlt: 'Imagem do Artigo 2',
        linkUrl: 'https://exemplo.com/artigo2',
    },
    {
        title: 'Resolvendo Equações Quadráticas: Métodos e Exemplos',
        content:
            'Aprenda a resolver equações quadráticas de forma eficaz. Este artigo inclui métodos e exemplos práticos para melhorar suas habilidades em matemática.',
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Webysther_20160313_-_Fun%C3%A7%C3%A3o_polinomial_do_segundo_grau.svg/1200px-Webysther_20160313_-_Fun%C3%A7%C3%A3o_polinomial_do_segundo_grau.svg.png',
        imageAlt: 'Imagem do Artigo 3',
        linkUrl: 'https://exemplo.com/artigo3',
    },
    {
        title: 'Teorema de Pitágoras: Aplicações e Demonstração',
        content:
            'Neste artigo, exploramos o famoso Teorema de Pitágoras, suas aplicações em trigonometria e geometria, e fornecemos uma demonstração passo a passo.',
        imageUrl: 'https://s2.static.brasilescola.uol.com.br/be/2023/02/formula-teorema-pitagoras.jpg',
        imageAlt: 'Imagem do Artigo 4',
        linkUrl: 'https://exemplo.com/artigo4',
    },
];


export default function page() {
    return (
        <div className='min-h-screen flex items-center justify-center sm:p-8 p-2 bg-red-300 dark:bg-gray-900 accent-red-600 dark:text-white bgsvg'>
            <div className='flex flex-col p-4 gap-6  dark:bg-gray-800 rounded-lg '>
                <Filtercomponent />
                <div className='flex flex-row gap-5 justify-center 2xl:justify-normal flex-wrap'>

                    {cardsData.map((card, index) => (
                        <Cardpost key={index} {...card} />
                    ))}
                </div>

            </div>
        </div>
    )
}
