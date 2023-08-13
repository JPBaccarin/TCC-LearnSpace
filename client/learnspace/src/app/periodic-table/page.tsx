import React from 'react'
import Periodictable from '@/components/periodictable/periodictable'
type Props = {}

function page({ }: Props) {
    return (
        <div >        
            <div className='text'>
                <div className='neon'>                    
                    <h1>Tabela Periodica</h1>                    
                </div>
            </div>        
            <Periodictable />
        </div>
    )
}

export default page