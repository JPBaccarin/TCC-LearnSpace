'use client'
import React from "react";
import NavbarLandingPage from "@/components/index/navbar";
import Hero from "@/components/Sobre/hero";

const page: React.FC = () => {
    return (
      <div className="bg-gray-900 ">
           <NavbarLandingPage />
           <Hero />
      </div>
    );
  };


  export default page;