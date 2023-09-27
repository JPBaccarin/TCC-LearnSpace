import React from 'react'

function Filtercomponent() {
    return (
        <div className=' flex flex-row sm:gap-6 gap-4 items-center border-b border-white/10 pb-2 text-white'>

            <h1 className='text-lg font-semibold'>categorias:</h1>

            <select className='bg-gray-500 p-1 rounded-md border  border-white/10 text-white' name="" id="">
                <option value="valor1">ensino médio</option>
                <option value="valor2" selected>ensino superior</option>
                <option value="valor3">metódos de ensino</option>
            </select>

            <select className='bg-gray-500 border border-white/10 p-1 rounded-md text-white' name="" id="">
                <option value="valor1">história</option>
                <option value="valor2" selected>matemática</option>
                <option value="valor3">física</option>
            </select>
        </div>
    )
}

export default Filtercomponent