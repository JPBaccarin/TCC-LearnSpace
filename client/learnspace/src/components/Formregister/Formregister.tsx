import React from 'react';

interface RegistrationFormProps {
  onSubmit: (event: React.FormEvent<HTMLFormElement>) => void;
}

const RegistrationForm: React.FC<RegistrationFormProps> = ({ onSubmit }) => {
  return (
    <form onSubmit={onSubmit} className="space-y-4">
      <div>
        <label htmlFor="fullName" className="block font-medium">
          Nome Completo
        </label>
        <input
          type="text"
          id="fullName"
          name="fullName"
          className="w-full border-gray-500 rounded-md p-2"
        />
      </div>
      <div>
        <label htmlFor="email" className="block font-medium">
          Email
        </label>
        <input
          type="email"
          id="email"
          name="email"
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
        className="w-full bg-green-500 text-white py-2 rounded-md hover:bg-green-600"
      >
        Cadastrar
      </button>
    </form>
  );
};

export default RegistrationForm;
