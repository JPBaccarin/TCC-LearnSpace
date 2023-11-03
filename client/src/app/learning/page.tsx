'use client'
import Cardpost from '@/components/learning/Cardpost';
import Filtercomponent from '@/components/learning/Filtercomponent';
import React, { useEffect, useState } from 'react';
import config from './config';

interface BlogData {
    id: number;
    attributes: {
        Title: string;
        Category: string;
        Summary: string;
        IsFeatured: boolean;
        Content: string;
        createdAt: string;
        updatedAt: string;
        publishedAt: string;
        locale: string;
        Slug: string;
        Thumbnail: {
            data: {
                id: number;
                attributes: {
                    name: string;
                    alternativeText: string | null;
                    caption: string | null;
                    width: number;
                    height: number;
                    formats: {
                        thumbnail: {
                            name: string;
                            hash: string;
                            ext: string;
                            mime: string;
                            path: string | null;
                            width: number;
                            height: number;
                            size: number;
                            url: string;
                        };
                        small: {
                            name: string;
                            hash: string;
                            ext: string;
                            mime: string;
                            path: string | null;
                            width: number;
                            height: number;
                            size: number;
                            url: string;
                        };
                       
                        // Adicione outros tamanhos de imagem, se necessário
                    };
                    hash: string;
                    ext: string;
                    mime: string;
                    size: number;
                    url: string;
                    previewUrl: string | null;
                    provider: string;
                    provider_metadata: string | null;
                    createdAt: string;
                    updatedAt: string;
                };
            };
        };
    };
};

export default function Page() {
    const [blogs, setBlogs] = useState<BlogData[] | null>(null);

    useEffect(() => {
        const fetchBlogs = async () => {
            const reqOptions = {
                headers: {
                    Authorization: `Bearer 01fad8aa2a3657e42a1280d046e0907175bc24bb915c08487c5a5e5c15e583f3c18b269c2e8ad79bdefedea631645edc835aa8fc55d5586d54bfe5da1b8f73fcaf891e419a92628164f20dfbd04b3f4afc5ec3ab54979e28eb554f5aa279f0a238501907db8049d0232b3246a1cc6d8389afe059d93cedfb094b93bfaaf38d9f`
                }
            };

            try {
                const request = await fetch(`${config.api}/api/blogs?populate=*`, reqOptions);
                const response = await request.json();
                setBlogs(response.data);

            } catch (error) {
                console.error('Erro ao buscar blogs:', error);
                setBlogs([]); // Define como um array vazio em caso de erro
            }
        };

        fetchBlogs();
    }, []);

    return (
        <div className='min-h-screen flex items-center justify-center sm:p-8 p-2 bg-red-300 dark:bg-gray-900 accent-red-600 dark:text-white bgsvg'>
            <div className='flex flex-col p-4 gap-6  dark:bg-gray-800 rounded-lg  w-full'>
                <Filtercomponent />
                <div className='flex flex-wrap justify-center gap-5'>
                    {blogs !== null ? (
                        blogs.map((blog) => (
                            <Cardpost
                                key={blog.id}
                                title={blog.attributes.Title}
                                summary={blog.attributes.Summary}
                                linkUrl={`learning/${blog.attributes.Slug}`}
                                imageUrl={`${config.api}${blog.attributes.Thumbnail.data.attributes.formats.small.url}`}
                                category={blog.attributes.Category}
                            />
                        ))
                    ) : (
                        <p>Carregando...</p>
                    )}
                </div>
            </div>
        </div>
    );
}
