<%@ page contentType="text/html;charset=UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>住所の登録</title>
    </head>

    <body>
        <form action="p_addrec2.jsp" method="POST">
            <div>
                <label>No:
                    <br />
                </label>
                <input type="text" name="no" size="3">
            </div>

            <div>
                <label>名前:
                    <br>
                    <input type="text" name="name" size="20">
                </label>
            </div>
            <div>
                <label>性別:
                    <br>
                    <select name="sex">

                        <option value="男"></option>
                        <option value="女"></option>

                    </select>
                </label>
            </div>
            <div>
                <label> TEL:
                    <br>
                    <input type="text" name="tel" size="20">
                </label>
            </div>
            <div>
                <label>住所:
                    <input type="submit" name="address" size="60">
                </label>
            </div>
            <div>
                <input type="submit" value="登録">
            </div>
        </form>
    </body>

    </html>