import React from 'react'
import Periodictable from '@/components/periodictable/periodictable'
type Props = {}

function page({ }: Props) {
    return (
        <div className='min-w-screen min-h-screen bgsvg bg-gray-900' >        
            <div className='periodictableheading'>
                <div className=' neon '>                    
                    <h1>Tabela Periodica</h1>                    
                </div>
            </div>        
            <Periodictable />
        </div>
    )
}

export default page