.class public Ljavax/mail/internet/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# instance fields
.field private list:Ljavax/mail/internet/ParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 94
    .local v2, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 95
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "In Content-Type string <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 96
    const-string v5, ", expected MIME type, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_0
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    .line 103
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "In Content-Type string <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-string v5, ", expected \'/\', got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 109
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "In Content-Type string <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 110
    const-string v5, ", expected MIME subtype, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_2
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "rem":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 117
    new-instance v3, Ljavax/mail/internet/ParameterList;

    invoke-direct {v3, v1}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 118
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "list"    # Ljavax/mail/internet/ParameterList;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 78
    return-void
.end method


# virtual methods
.method public getBaseType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Ljavax/mail/internet/ParameterList;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    return-object v0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 292
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/ContentType;->match(Ljavax/mail/internet/ContentType;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public match(Ljavax/mail/internet/ContentType;)Z
    .locals 5
    .param p1, "cType"    # Ljavax/mail/internet/ContentType;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    iget-object v3, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 255
    :cond_0
    iget-object v3, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    :cond_1
    :goto_0
    return v1

    .line 259
    :cond_2
    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "sType":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 263
    :cond_3
    if-eqz v0, :cond_5

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 264
    goto :goto_0

    .line 267
    :cond_5
    iget-object v3, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    .line 268
    :cond_6
    iget-object v3, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_7
    move v1, v2

    .line 267
    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 200
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setParameterList(Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "list"    # Ljavax/mail/internet/ParameterList;

    .prologue
    .line 208
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 209
    return-void
.end method

.method public setPrimaryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 220
    :cond_0
    const-string v1, ""

    .line 230
    :goto_0
    return-object v1

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
