<%--
  Created by IntelliJ IDEA.
  User: patryck
  Date: 03/02/2017
  Time: 08:48
--%>


    <table>
    <thead>
    </thead>

    <g:each in="${listed}" var="item">
    <tr>
              <td>Nome: ${item[0]}</td>
              <td>Data: ${item[1]}</td>
              <td>Entrada: ${item[2]}</td>
              <td>Saída: ${item[3]}</td>
          </tr>
    </g:each>
      </table>

