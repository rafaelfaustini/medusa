<%
Class Medusa

	Private Sub Class_Terminate()

	End Sub

    Private Function filterXSS(content) ' 
        Dim text : text = content
        text = Replace(text,"&","&#39;")
        text = Replace(text,"=","&#61")
        text = Replace(text,"<","&#60;")
        text = Replace(text,">","&#62;")
        text = Replace(text,"&quot;","&#34;")
        text = Replace(text,"'","&#39;")
        text = Replace(text,"-","&#45;")

        filterXSS = text
    End Function

    Private Function filterSQL(content) ' Agressive sql filtering (Only use if you can't do prepared statments), it can distort the data

    normalBlackList = Array( ";",  "*/", "kill", "fetch", "@",_
                  "char", "nchar", "--", "varchar", "nvarchar",_
                  "alter", "begin", "cast", "create", "cursor",_
                  "declare", "delete", "/*", "\", "drop", "end", "exec",_
                  "execute",  "insert", "open",_
                  "select", "sys", "sysobjects", "@@","syscolumns",_
                  "table", "update", "null", " or ", " and ", " is ", "union",_
                  "&#47;", "&sol;", "U+0002F", "\002F", "&#x2F;",_
                  "&#42;", "&ast;", "&midast;", "U+0002A", "\002A", "&#x2A;",_
                  "&#45;", "U+0002D", "\002D", "&#x2D;",_
                  "&#64;", "&commat;", "U+00040", "\0040", "&#x40;")

    text = LCase(content)
    
    Do While flag <> -1 ' The replaces will be repeated until no occurrences are detected, to prevent: Selec--t
        flag = 0
        For Each element in normalBlackList
            If ( InStr(text, element) <> 0 ) Then
                text = Replace(text, element,"")
                flag = flag + 1
            END IF
        Next

        If ( InStr(text, "'") <> 0 ) Then
            flag = flag + 1
        END IF

        If Flag = 0 Then
            Flag = -1
        End If

    Loop
    text = Replace(text, "'","''")
    filterSQL = text
    End Function



    Public Function filter(content, flag)
        Select Case VarType(content)
            Case 8
                If flag = 0 Then
                    filter = filterXSS(content)
               End If
               If flag = 1 Then
                    filter = filterSQL(content)
               End If
        End Select
    End Function

End Class
%>

