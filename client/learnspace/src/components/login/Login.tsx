import React from 'react';
import Link from 'next/link';
import LoginForm from '@/components/Formlogin/Formlogin';



function LoginPage(): React.JSX.Element {
  const handleLoginSubmit = (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    // Lógica de autenticação aqui
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-black">
      <div className="bg-gray-500 p-8 rounded-lg shadow-md w-80">
        <h1 className="text-2xl font-semibold mb-4">Login</h1>
        <LoginForm onSubmit={handleLoginSubmit} />
        <p className="mt-4 text-center">
          Ainda não tem uma conta?{' '}
          <Link href="/dashboard">
            <p className="text-blue-500 hover:underline">Cadastre-se</p>
          </Link>
        </p>
      </div>
    </div>
  );
}

export default LoginPage;
