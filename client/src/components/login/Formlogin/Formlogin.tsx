import React, { useState } from 'react';

interface LoginFormProps {
  onLogin: (email: string, senha: string) => void;
}

const FormLogin: React.FC<LoginFormProps> = ({ onLogin }) => {
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    onLogin(email, senha);
  };

  return (
    <div className='flex justify-center'>
    <form onSubmit={handleSubmit} className="bg-transparent space-y-4 flex flex-col  rounded-full py-2 px-4">
      <div>
        <label htmlFor="email" className="block font-medium mb-1 text-red-500">
          Email
        </label>
        <input
          type="email"
          id="email"
          name="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          className="p-2 w-full shadow-md border border-red-500/40 rounded-lg outline-none focus:outline-none focus:shadow-outline bg-gray-700"
        />
      </div>
      <div>
        <label htmlFor="senha" className="block font-medium mb-1  text-red-500">
          Senha
        </label>
        <input
          type="password"
          id="senha"
          name="senha"
          value={senha}
          onChange={(e) => setSenha(e.target.value)}
          className="p-2 w-full shadow-md border border-red-500/40 rounded-lg outline-none focus:outline-none focus:shadow-outline bg-gray-700"
        />
      </div>
      <button
        type="submit"
        className="w-full bg-red-500 text-white py-2 rounded-md transition-all hover:bg-red-600"
      >
        Entrar
      </button>
      <a href="login/register" className=' text-red-400 hover:underline text-center m-2 '> não possui uma conta?</a>

    </form>
    </div>
  );
};

export default FormLogin;
