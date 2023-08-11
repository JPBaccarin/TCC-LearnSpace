'use client'

import React from 'react'
import data from './PeriodicTableJSON.json'
import ElementModal from './elementmodal';
import { useState } from 'react';
interface Element {
    name: string;
    symbol: string;
    number: number;
    xpos: number;
    ypos: number;
    category: string;
    
}

const colorMap: { [key: string]: string } = {
    "noble gas": "#10B981", // green-500
    "alkaline earth metal": "#F6E05E", // yellow-400
    "diatomic nonmetal": "#F43F5E", // red-500
    "alkali metal": "#EC4899", // pink-500
    "transition metal": "#3B82F6", // blue-500
    "post-transition metal": "#6B7280", // gray-500
    "lanthanide": "#9333EA", // indigo-600
    "metalloid": "#60A5FA", // sky-400
};




const Periodictable: React.FC = () => {

    const [selectedElement, setSelectedElement] = useState<Element | null>(null);
    const [isModalOpen, setIsModalOpen] = useState(false);

    const handleElementClick = (element: Element) => {
        setSelectedElement(element);
        setIsModalOpen(true);
    };

    return (
        <div className="periodic-table  mt-6 p-6 dark:text-white bg-slate-200 dark:bg-gray-800 rounded-xl ">
            {data.elements.map((element: Element) => (
                <div
                    className="element bg-slate-100 rounded-md duration-300 dark:bg-gray-700"
                    key={element.name}
                    style={{
                        gridRow: element.ypos,
                        gridColumn: element.xpos,
                        borderColor: colorMap[element.category],
                    }}
                    onClick={() => handleElementClick(element)}

                >
                    <strong>{element.symbol}</strong>
                    <small className="number">{element.number}</small>
                    <small className="name">{element.name}</small>
                </div>
            ))}
            {isModalOpen && (
                <ElementModal element={selectedElement} onClose={() => setIsModalOpen(false)} />
            )}
        </div>
    );
};

export default Periodictable;