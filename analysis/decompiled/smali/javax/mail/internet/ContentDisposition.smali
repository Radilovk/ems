.class public Ljavax/mail/internet/ContentDisposition;
.super Ljava/lang/Object;
.source "ContentDisposition.java"


# instance fields
.field private disposition:Ljava/lang/String;

.field private list:Ljavax/mail/internet/ParameterList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 92
    .local v2, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 93
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected disposition, got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "rem":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 100
    new-instance v3, Ljavax/mail/internet/ParameterList;

    invoke-direct {v3, v1}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 101
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;
    .param p2, "list"    # Ljavax/mail/internet/ParameterList;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 75
    return-void
.end method


# virtual methods
.method public getDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Ljavax/mail/internet/ParameterList;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    return-object v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 159
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setParameterList(Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "list"    # Ljavax/mail/internet/ParameterList;

    .prologue
    .line 168
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 181
    const-string v1, ""

    .line 192
    :goto_0
    return-object v1

    .line 183
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
