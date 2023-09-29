'use client'
import FAQSection from "@/components/index/faq";
import Hero from "@/components/index/hero";
import NavbarLandingPage from "@/components/index/navbarlandingpage/navbarlandingpage";
import React from "react";
import Funcionalidades from "@/components/index/funcionalidades/funcionalidades";
import FuncionalidadesFuturas from "@/components/index/funcionalidadesfuturas/funcionalidadesfuturas";
import Porque from "@/components/index/problema/problema";

const page: React.FC = () => {
  return (
    <div className="bg-gray-900 ">
      <NavbarLandingPage />
      <Hero />
      <div className="flex flex-col gap-10">
        <Porque />
        <Funcionalidades />
        <FuncionalidadesFuturas />
        <FAQSection />
      </div>
    </div>
  );
};

export default page;
