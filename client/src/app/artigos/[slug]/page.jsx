'use client'
import React, { useEffect, useState } from 'react';
import config from '../config';
import ReactMarkdown from 'react-markdown';
import './index.css';
import { FiArrowLeftCircle } from 'react-icons/fi';
import { motion } from 'framer-motion';

const BlogPage = () => {
  const [blog, setBlog] = useState(null);

  useEffect(() => {
    const currentSlug = window.location.pathname.split('/').pop();
    const apiUrl = `${config.api}/api/blogs?filters[Slug][$eq]=${currentSlug}`;

    fetch(apiUrl)
      .then((response) => response.json())
      .then((data) => {
        if (data && data.data && data.data.length > 0) {
          setBlog(data.data[0].attributes);
        }
      })
      .catch((error) => {
        console.error('Erro ao buscar blog:', error);
      });
  }, []);

  return (
    <div className='bg-gray-900 bgsvg w-full min-h-screen
     h-full p-4 dark-text text-white flex justify-center items-center mycomponent'>
      <motion.div className='bg-gray-800 flex flex-col sm:w-2/3 rounded-md p-5 h-fit break-words'
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}

      >
        <a href="/artigos" className='absolute '>
          <FiArrowLeftCircle className='w-10 h-10 text-gray-600 hover-text-gray-200 transition-all duration-300' />
        </a>

        {blog && (
          <>
            <h1 className='text-center text-4xl mb-0 font-bold'>{blog.Title}</h1>
            <section className='px-4 py-2'>
              <ReactMarkdown>{blog.Content}</ReactMarkdown>
            </section>
          </>
        )}
      </motion.div>
    </div>
  );
};

export default BlogPage;
