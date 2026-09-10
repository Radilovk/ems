.class public abstract Ljavax/mail/search/StringTerm;
.super Ljavax/mail/search/SearchTerm;
.source "StringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x11ae4e90f062d98dL


# instance fields
.field protected ignoreCase:Z

.field protected pattern:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 75
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 86
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 87
    iput-boolean p2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    instance-of v3, p1, Ljavax/mail/search/StringTerm;

    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 124
    check-cast v0, Ljavax/mail/search/StringTerm;

    .line 125
    .local v0, "st":Ljavax/mail/search/StringTerm;
    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-boolean v3, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    iget-object v3, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-boolean v3, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public getIgnoreCase()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected match(Ljava/lang/String;)Z
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v6, v0, v1

    .line 110
    .local v6, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v2, v6, :cond_0

    .line 115
    :goto_1
    return v4

    .line 111
    :cond_0
    iget-boolean v1, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 112
    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    const/4 v4, 0x1

    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
