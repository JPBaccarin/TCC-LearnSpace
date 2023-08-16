import React from 'react';
import Link from 'next/link';
import LoginForm from '@/components/Formlogin/Formlogin';



type Props = {}

const Login = (props: Props) => {
  const handleLoginSubmit = (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    // Lógica de autenticação aqui
  };
  return (
    <>

      <div className="min-h-screen min-w-full  flex items-center justify-center text-white bg-gray-900">
        <div className="bg-gray-800 p-8 rounded-lg shadow-md w-80 border border-blue-500/10 shadow-blue-500/">
          <h1 className="text-2xl font-semibold mb-4">Login</h1>
          <LoginForm onSubmit={handleLoginSubmit} />
          <p className="mt-4 flex items-center flex-col">
            Ainda não tem uma conta?{' '}
            <Link href="./">
              <p className="text-blue-500 hover:underline">Cadastre-se</p>

            </Link>
          </p>
        </div>
      </div>
    </>
  )
}

export default Login
