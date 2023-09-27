import React from 'react'
import { useEffect, useState } from 'react';
import config from '../config';
import fetchBlogs from '../fetch-blogs';
import ReactMarkdown from 'react-markdown'
import './index.css'

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
                        large: {
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
                        medium: {
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
        FeaturedImage: {
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
                        large: {
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
                        medium: {
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
            }[];
        };
        localizations: {
            data: any[]; // Você pode substituir 'any' pelo tipo correto, se necessário
        };
    };
}


const BlogPage = async (props: any) => {


    const blogs = await fetchBlogs(`filters[slug][$eq]=${props.params.slug}`)

    if (blogs.data.length === 0) return null;
    const blog = blogs.data[0];

    return (
        <div className='bg-gray-900 bgsvg w-full h-full p-4 dark:text-white flex justify-center items-center'>
            <div className='bg-gray-800 flex flex-col w-2/3 rounded-md p-5 h-fit'>
                <h2 className='text-center text-4xl font-bold'>{blog.attributes.Title}</h2>
                <div className='px-4 py-2'>
                    <ReactMarkdown>{blog.attributes.Content}</ReactMarkdown>
                </div>
                           </div>
        </div>
    )
}

export const generateStaticParams = async () => {

    const blogs = await fetchBlogs(null);

    return blogs.data.map((blog: any) => ({
        slug: blog.attributes.slug,
    }));
}

export default BlogPage