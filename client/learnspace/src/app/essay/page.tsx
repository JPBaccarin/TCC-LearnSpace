import dynamic from 'next/dynamic';

const DynamicCorretorComponent = dynamic(
    () => import('@/components/corretor/CorrectorComponent'),
    { ssr: false }
);

const Corretor = () => {
    return (
        <div className="min-h-screen flex flex-col items-center justify-center sm:p-8 p-2 bg-red-300 bgsvg dark:bg-gray-900 accent-red-600 dark:text-white" >
            <DynamicCorretorComponent />

        </div>
    );
};

export default Corretor;
