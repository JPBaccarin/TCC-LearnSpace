import React from 'react';
import Login from '@/components/login/Login'
import Image from 'next/image';
import { loginrobot } from '@/components/index/imgs/images';

type NavbarItemProps = {
  image: any;
};

const imagesd: React.FC = () => {
  return null; // Retorna null se você não planeja renderizar nada
}

  const navbarItems: NavbarItemProps[] = [
      {
          image: loginrobot,
      },      
  ];


const page: React.FC = () => {
  return (
    <div className="pl-56 min-h-screen flex items-center justify-center bg-gray-900 heropattern-bubbles-red-500/50 ">  
      <div className=" pl-16 flex items-center ">
      
        <div className=" pl-96"> {/* Espaço à direita da imagem */}
          <Image className=" absolute inset-y-48 left-16 " src={loginrobot} alt="Login Robot" width={300} height={300} />
        </div>
        <Login />
      </div>
      <div className="text-3xl absolute inset-y-24 left-16 text-left font-mono  text-red-500">Faça o Login para <br/>adentrar nesse Espaço de ensinamento
    </div>
    </div>
  );
};

export default page;
