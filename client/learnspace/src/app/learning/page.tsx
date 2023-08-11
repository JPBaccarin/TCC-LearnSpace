import Cardpost from '@/components/learning/Cardpost'
import Filtercomponent from '@/components/learning/Filtercomponent'
import React from 'react'


const cardsData = [
    {
        title: 'Título do Card 1',
        description:
            'Descrição do conteúdo que será exibido no card 1 do Brasil Escola. Aqui você pode adicionar mais informações.',
        imageUrl: 'https://placehold.co/600x400',
        imageAlt: 'Imagem do Card 1',
        linkUrl: '#link-para-conteudo1',
    },
    {
        title: 'Título do Card 2',
        description:
            'Descrição do conteúdo que será exibido no card 2 do Brasil Escola. Aqui você pode adicionar mais informações.',
        imageUrl: 'https://placehold.co/600x400',
        imageAlt: 'Imagem do Card 2',
        linkUrl: '#link-para-conteudo2',
    },
    {
        title: 'Título do Card 2',
        description:
            '.',
        imageUrl: 'https://placehold.co/600x400',
        imageAlt: 'Imagem do Card 2',
        linkUrl: '#link-para-conteudo2',
    },
    {
        title: 'Título do Card 2',
        description:
            'Descrição do conteúdo que será exibido no card 2 do Brasil Escola. Aqui você pode adicionar mais informações.',
        imageUrl: 'https://placehold.co/600x400',
        imageAlt: 'Imagem do Card 2',
        linkUrl: '#link-para-conteudo2',
    },

    // Adicione mais objetos aqui para criar mais cards
];

export default function page() {
    return (
        <div className='min-h-screen flex items-center justify-center sm:p-8 p-2 bg-red-300 dark:bg-gray-900 accent-red-600 dark:text-white'>
            <div className='flex flex-col p-4 gap-6  dark:bg-white/10 rounded-lg border dark:border-white/20'>
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
