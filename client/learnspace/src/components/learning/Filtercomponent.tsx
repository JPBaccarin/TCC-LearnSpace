import React from 'react';

function Filtercomponent() {
    return (
        <div className='flex flex-col sm:flex-row sm:gap-6 gap-4 items-center border-b border-white/10 pb-2 text-white'>

            <h1 className='text-lg font-semibold'>Categorias:</h1>

            <select className='bg-gray-500 p-1 rounded-md border border-white/10 text-white'>
                <option value="valor1">Ensino médio</option>
                <option value="valor2">Ensino superior</option>
                <option value="valor3">Métodos de ensino</option>
            </select>

            <select className='bg-gray-500 p-1 rounded-md border  border-white/10 text-white'>
                <option value="valor1">História</option>
                <option value="valor2">Matemática</option>
                <option value="valor3">Física</option>
            </select>
        </div>
    );
}

export default Filtercomponent;
