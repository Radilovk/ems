.class public Ljavax/mail/internet/AddressException;
.super Ljavax/mail/internet/ParseException;
.source "AddressException.java"


# static fields
.field private static final serialVersionUID:J = 0x7ec48f3eab5368f0L


# instance fields
.field protected pos:I

.field protected ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 91
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 104
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 105
    iput p3, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 106
    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    return v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Ljavax/mail/internet/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v1, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    .line 135
    :goto_0
    return-object v2

    .line 132
    .end local v1    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " in string ``"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget v2, p0, Ljavax/mail/internet/AddressException;->pos:I

    if-gez v2, :cond_1

    move-object v1, v0

    .end local v0    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    move-object v2, v0

    .line 134
    goto :goto_0

    .line 135
    .end local v1    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavax/mail/internet/AddressException;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    .end local v0    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0
.end method
