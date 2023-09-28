'use client'
import React, { useState } from 'react';
import data from './PeriodicTableJSON.json';
import ElementModal from './elementmodal';

interface Element {
    name: string;
    symbol: string;
    number: number;
    atomic_mass: number;
    summary: string;
    image: {
        url: string;
        title: string;
        attribution: string | null; // Aceita nulo
    };
    electron_configuration: string;
    electron_configuration_semantic: string;
    electron_affinity: number | null; // Aceita nulo
    ionization_energies: number[] | null; // Aceita nulo
    electronegativity_pauling: number | null; // Aceita nulo
    xpos: number;
    ypos: number;
    category: string;
}

const colorMap: Record<string, string> = {
    "noble gas": "#10B981", // green-500
    "alkaline earth metal": "#F6E05E", // yellow-400
    "diatomic nonmetal": "#F43F5E", // red-500
    "alkali metal": "#EC4899", // pink-500
    "transition metal": "#3B82F6", // blue-500
    "post-transition metal": "#6B7280", // gray-500
    "lanthanide": "#9333EA", // indigo-600
    "metalloid": "#60A5FA", // sky-400
};

const PeriodicTable: React.FC = () => {
    const [selectedElement, setSelectedElement] = useState<Element | null>(null);
    const [isModalOpen, setIsModalOpen] = useState<boolean>(false);

    const handleElementClick = (element: Element) => {
        setSelectedElement(element);
        setIsModalOpen(true);
    };

    return (
        <div className="periodic-table mt-6 p-6 dark:text-white bg-slate-200 dark:bg-gray-800 rounded-xl">
            {data.elements.map((element: Element) => (
                <div
                    className="element bg-slate-100 rounded-md duration-300 dark:bg-gray-700"
                    key={element.name}
                    style={{
                        gridRow: element.ypos.toString(),
                        gridColumn: element.xpos.toString(),
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

export default PeriodicTable;
