import br.com.dio.desafio.dominio.Bootcamp;
import br.com.dio.desafio.dominio.Curso;
import br.com.dio.desafio.dominio.Dev;
import br.com.dio.desafio.dominio.Mentoria;
import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        Curso curso1 = new Curso();
        curso1.setTitulo("curso java");
        curso1.setDescricao("Bootcamp java DevOps");
        curso1.setCargaHoraria(8);

        Curso curso2 = new Curso();
        curso2.setTitulo("curso js");
        curso2.setDescricao("Bootcamp javascript");
        curso2.setCargaHoraria(4);

        Mentoria mentoria = new Mentoria();
        mentoria.setTitulo("mentoria de java");
        mentoria.setDescricao("mentoria Carreira Dev");
        mentoria.setData(LocalDate.now());

        /*System.out.println(curso1);
        System.out.println(curso2);
        System.out.println(mentoria);*/

        Bootcamp bootcamp = new Bootcamp();
        bootcamp.setNome("Bootcamp Java Developer");
        bootcamp.setDescricao("Bootcamp Java DevOps");
        bootcamp.getConteudos().add(curso1);
        bootcamp.getConteudos().add(curso2);
        bootcamp.getConteudos().add(mentoria);
        System.out.println();

        Dev devCamilla = new Dev();
        devCamilla.setNome("Camilla");
        devCamilla.inscreverBootecamp(bootcamp);
        System.out.println("Conteudos Inscritos Camilla: " + devCamilla.getConteudosInscritos());
        System.out.println();
        devCamilla.progredir();
        devCamilla.progredir();
        System.out.println("Conteudos Inscritos Camilla: " + devCamilla.getConteudosInscritos());
        System.out.println();
        System.out.println("Conteudos Concluidos Camilla: " + devCamilla.getConteudoConcluidos());
        System.out.println("Xp = " + devCamilla.calcularTotalXp());
        System.out.println(" ------------------------------------------- ");

        System.out.println();
        Dev devRenato = new Dev();
        devRenato.setNome("Renato");
        devRenato.inscreverBootecamp(bootcamp);
        System.out.println("Conteudos Inscritos Renato: " + devRenato.getConteudosInscritos());
        System.out.println();
        devRenato.progredir();
        devRenato.progredir();
        devRenato.progredir();

        System.out.println("Conteudos Inscritos Renato: " + devRenato.getConteudosInscritos());
        System.out.println();
        System.out.println("Conteudos Concluidos Renato: " + devRenato.getConteudoConcluidos());
        System.out.println("Xp = " + devRenato.calcularTotalXp());

    }
}
