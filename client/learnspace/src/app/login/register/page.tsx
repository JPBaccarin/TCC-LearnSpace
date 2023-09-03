'use client'
import React from 'react';
import Register from '@/components/register/Register'

const page: React.FC = () => {
  return (
    <div className="min-h-screen w-screen flex items-center justify-center bg-gray-900">      
        <Register />
    </div>   
  );
};

export default page;