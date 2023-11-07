'use client'
import Cardpost from '@/components/learning/Cardpost';
import Filtercomponent from '@/components/learning/Filtercomponent';
import React, { useEffect, useState } from 'react';
import config from './config';
import { motion } from 'framer-motion'

export default function Page() {
    const [blogs, setBlogs] = useState(null)



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
        <div className='min-h-screen flex items-center justify-center sm:p-8 p-2 bg-red-300 dark:bg-gray-900 accent-red-600 dark:text-white heropattern-wiggle-white/10'>
            <motion.div className='flex flex-col p-4 gap-6  dark:bg-gray-800 rounded-lg  w-full'
                initial={{ opacity: 0, y: 0 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.5, }}
            >
                <h1 className='font-bold text-2xl ml-0 sm:ml-8 mb-0 sm:mb-2'>Artigos: </h1>
                <div className='flex flex-wrap justify-center gap-5'>
                    {blogs !== null ? (
                        blogs.map((blog, index) => (
                            <motion.div
                                key={blog.id}
                                initial={{ opacity: 0, y: 20 }}
                                animate={{ opacity: .8, y: 0 }}
                                exit={{ opacity: 0, y: -20 }}
                                transition={{ duration: .5, delay: index * 0.2 }}
                                className='w-full sm:w-1/2 md:w-1/3 lg:w-1/4 xl:w-1/5'
                            >

                                <Cardpost
                                    key={blog.id}
                                    title={blog.attributes.Title}
                                    summary={blog.attributes.Summary}
                                    linkUrl={`artigos/${blog.attributes.Slug}`}
                                    imageUrl={`${config.api}${blog.attributes.Thumbnail.data.attributes.formats.small.url}`}
                                    category={blog.attributes.Category}
                                />
                            </motion.div>
                        ))
                    ) : (
                        <p className='animate-pulse'>Carregando...</p>
                    )}
                </div>
            </motion.div >
        </div>
    );
}
