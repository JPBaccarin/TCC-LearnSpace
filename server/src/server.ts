import express, { Request, Response, NextFunction } from 'express';
import mysql, { RowDataPacket } from 'mysql2/promise';
import bcrypt from 'bcrypt';
import axios from 'axios';
import jwt from 'jsonwebtoken';
import cors from 'cors';

const app = express();
app.use(express.json());
app.use(cors());

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'bdtcc',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
});

const JWT_SECRET = 'seu_segredo_secreto';

const authenticate = (req: Request, res: Response, next: NextFunction) => {
    const token = req.header('Authorization')?.replace('Bearer ', '');
    if (!token) {
        return res.status(401).json({ error: 'Token de autenticação não fornecido.' });
    }
    try {
        const decoded: any = jwt.verify(token, JWT_SECRET);
        req.body.userId = decoded.userId;
        next();
    } catch (error) {
        res.status(401).json({ error: 'Token de autenticação inválido.' });
    }
};

app.post('/signup', async (req: Request, res: Response) => {
    try {
        const { nome, senha, email, data_nasc } = req.body;
        const hashedPassword = await bcrypt.hash(senha, 10);
        await db.query('INSERT INTO usuarios (nome, senha, email, data_nasc) VALUES (?, ?, ?, ?)', [nome, hashedPassword, email, data_nasc]);
        res.status(201).json({ message: 'Usuário registrado com sucesso!' });
    } catch (error) {
        res.status(500).json({ error: 'Ocorreu um erro ao registrar o usuário.' });
    }
});

app.post('/login', async (req: Request, res: Response) => {
    try {
        const { email, senha } = req.body;
        const [rows]: [RowDataPacket[], any] = await db.query('SELECT * FROM usuarios WHERE email = ?', [email]);
        const user: any = rows[0];
        if (!user || !(await bcrypt.compare(senha, user.senha))) {
            return res.status(401).json({ error: 'Credenciais inválidas.' });
        }
        const token = jwt.sign({ userId: user.id }, JWT_SECRET, { expiresIn: '1h' });
        res.status(200).json({ token });
    } catch (error) {
        res.status(500).json({ error: 'Ocorreu um erro ao fazer login.' });
    }
});




app.post('new-quiz', async (req: Request, res: Response) => {
    const { exerciseType, exerciseDifficulty, exerciseQuestionCount } = req.body;

    try {
        // Consulte o banco de dados com base nas opções selecionadas
        const [rows]: [RowDataPacket[], any] = await db.query(
            'SELECT * FROM questions WHERE type = ? AND difficulty = ? LIMIT ?',
            [exerciseType, exerciseDifficulty, exerciseQuestionCount]
        );

        // Transforme os resultados do banco de dados em um formato adequado para o novo quiz
        const newQuiz = rows.map((row: RowDataPacket) => {
            return {
                question: row.question,
                options: JSON.parse(row.options),
                correctAnswer: row.correctAnswer,
                selectedOption: '', // Inicialmente, nenhuma opção é selecionada
            };
        });

        res.json(newQuiz);
    } catch (error) {
        console.error('Erro ao criar novo quiz:', error);
        res.status(500).json({ error: 'Erro ao criar novo quiz' });
    }
});

const port = 3001;
app.listen(port, () => {
    console.log(`Servidor rodando na porta ${port}`);
});
