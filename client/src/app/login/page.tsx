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
    <div className="py-36 min-h-screen flex justify-center  bg-gray-900 heropattern-bubbles-red-500/50 ">  
      <div className="  ">            
       <div className=''>
                <Login />
        </div>
      </div>      
    </div>
  );
};

export default page;
