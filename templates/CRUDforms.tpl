<div class="forms">
        <section class="formSeccion">
            <h4>Agregue una nueva seccion</h4>
            <form action="addSeccion" method="post">
                <input type="text" name="seccion" placeholder="Agregue una nueva seccion">
                <input type="submit" value="Agregar">
            </form>

            <h4>Modifique una seccion</h4>
            <form action="updateSeccion" method="post">
                <input type="text" name="inputSeccion" placeholder="Modifique una seccion">
                
                <select name="selectSeccion">
                    {foreach from=$secciones item=seccion}
                            <option value="{$seccion->id_seccion}">{$seccion->secciones}</option>
                    {/foreach}
                </select>
                <input type="submit" value="Modificar">
            </form>
        </section>

        <section class="formNoticia">
            <h4>Agregue una nueva noticia</h4>
            <form action="addNoticia" method="post">
                <input type="text" name="titulo" placeholder="Titulo">
                <input type="text" name="descripcion" placeholder="Descripcion">
                <input type="text" name="cuerpo" placeholder="Cuerpo">
                <select name="seccion">
                    {foreach from=$secciones item=seccion}
                            <option value="{$seccion->id_seccion}">{$seccion->secciones}</option>
                    {/foreach}
                </select>
                <input type="submit" value="Agregar Noticia">
            </form>

            <h4>Modifique una noticia</h4>
            <form action="updateNoticia" method="post">
                <input type="text" name="titulo" placeholder="Titulo">
                <input type="text" name="descripcion" placeholder="Descripcion">
                <input type="text" name="cuerpo" placeholder="Cuerpo">
                <select name="noticia">
                    {foreach from=$tablaCompleta item=noticia}
                        <option value="{$noticia->id_noticia}">{$noticia->titulo|truncate:19}</option>
                    {/foreach}
                </select>
                <input type="submit" value="Modificar">
            </form>
        </section>
    </div>