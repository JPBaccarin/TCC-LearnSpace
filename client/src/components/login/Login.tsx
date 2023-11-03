'use client'
import React from 'react';
import FormLogin from '@/components/login/Formlogin/Formlogin';
import { useRouter } from 'next/router';

type Props = {}



export default function LoginPage() {

  const handleLogin = async (email: string, senha: string) => {

    // Aqui você pode enviar os dados do formulário de login para a sua API de autenticação
    const response = await fetch('http://localhost:3001/login', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ email, senha }),
    });

    if (response.status === 200) {
      console.log('Login bem-sucedido!');
      // Redirecione o usuário para a página principal ou outra página relevante após o login.
    } else {
      console.error('Erro ao fazer login.');
    }
  };

  return (
    <div className=" text-white flex items-center justify-center">
      <div className="bg-gray-800 p-8 rounded shadow-md w-96 ">
        <h1 className="text-2xl pl-4 object-center font-bold mb-4 text-red-500">Login</h1>
        <FormLogin onLogin={handleLogin} />
      </div>

    </div>
  );
}







