import React from 'react';

interface FormloginProps {
  onSubmit: (event: React.FormEvent<HTMLFormElement>) => void;
}

const LoginForm: React.FC<FormloginProps> = ({ onSubmit }) => {
  return (
    <form className="space-y-4">
      <div>
        <label htmlFor="username" className="block font-medium">
          Usuário
        </label>
        <input
          type="text"
          id="username"
          name="username"
          className="w-full border-gray-500 rounded-md p-2"
        />
      </div>
      <div>
        <label htmlFor="password" className="block font-medium">
          Senha
        </label>
        <input
          type="password"
          id="password"
          name="password"
          className="w-full border-gray-500 rounded-md p-2"
        />
      </div>
      <button
        type="submit"
        className="w-full bg-blue-500 text-white py-2 rounded-md hover:bg-blue-600"
      >
        Entrar
      </button>
    </form>
  );
};

export default LoginForm;
