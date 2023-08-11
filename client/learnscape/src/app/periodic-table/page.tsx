import React from 'react'
import Periodictable from '@/components/periodictable/periodictable'
type Props = {}

function page({ }: Props) {
    return (
        <div className='bg-slate-50'>

            <Periodictable />
        </div>
    )
}

export default page