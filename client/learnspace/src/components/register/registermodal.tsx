import { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';

interface RegistroModalProps {
    success: boolean;
    onClose: () => void;
}

const RegistroModal: React.FC<RegistroModalProps> = ({ success, onClose }) => {
    const [isVisible, setIsVisible] = useState(false);

    useEffect(() => {
        if (success) {
            setIsVisible(true);
            setTimeout(() => {
                setIsVisible(false);
                onClose();
            }, 3000); // Fechar após 3 segundos
        }
    }, [success, onClose]);

    return (
        <AnimatePresence>
            {isVisible && (
                <motion.div
                    className={`fixed left-4 bottom-4 w-40 h-12 flex items-center justify-center p-4 rounded-md ${success ? 'bg-green-500' : 'bg-red-500'
                        } text-white`}
                    initial={{ opacity: 0, y: 30 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: 30 }}
                >
                    {success ? 'Usuário registrado com sucesso!' : 'Erro ao registrar usuário.'}
                </motion.div>
            )}
        </AnimatePresence>
    );
};

export default RegistroModal;
