import React from 'react';

interface FormloginProps {
  onSubmit: (event: React.FormEvent<HTMLFormElement>) => void;
}

const LoginForm: React.FC<FormloginProps> = ({ onSubmit }) => {
  return (
    <form className="space-y-4">
      <div>
        <label htmlFor="username" className="block font-medium mb-1">
          Usuário
        </label>
        <input
          type="text"
          id="username"
          name="username"
          className="p-2 w-full  shadow-md shadow-blue-500/10 border   border-blue-500 rounded-lg outline-none focus:out focus:shadow-outline bg-gray-700"
        />
      </div>
      <div>
        <label htmlFor="password" className="block font-medium mb-1">
          Senha
        </label>
        <input
          type="password"
          id="password"
          name="password"
          className="p-2 w-full  shadow-md shadow-blue-500/10 border   border-blue-500 rounded-lg outline-none focus:out focus:shadow-outline bg-gray-700"
        />
      </div>
      <button
        type="submit"
        className="w-full bg-blue-500 text-white py-2 rounded-md transition-all hover:bg-blue-600"
      >
        Entrar
      </button>
    </form>
  );
};

export default LoginForm;
