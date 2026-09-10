.class public Lcom/sun/mail/util/PropUtil;
.super Ljava/lang/Object;
.source "PropUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static getBoolean(Ljava/lang/Object;Z)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "def"    # Z

    .prologue
    .line 175
    if-nez p0, :cond_1

    .line 189
    .end local p0    # "value":Ljava/lang/Object;
    .end local p1    # "def":Z
    :cond_0
    :goto_0
    return p1

    .line 177
    .restart local p0    # "value":Ljava/lang/Object;
    .restart local p1    # "def":Z
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 182
    if-eqz p1, :cond_3

    .line 183
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 185
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 187
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 188
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method

.method public static getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 106
    invoke-virtual {p0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanSystemProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sun/mail/util/PropUtil;->getBoolean(Ljava/lang/Object;Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 136
    .end local p1    # "def":Z
    :cond_0
    :goto_0
    return p1

    .line 119
    .restart local p1    # "def":Z
    :catch_0
    move-exception v2

    .line 128
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 131
    if-eqz p1, :cond_2

    .line 132
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move p1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 134
    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p1

    goto :goto_0

    .line 135
    .end local v1    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "sex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static getInt(Ljava/lang/Object;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "def"    # I

    .prologue
    .line 158
    if-nez p0, :cond_1

    .line 167
    .end local p0    # "value":Ljava/lang/Object;
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 160
    .restart local p0    # "value":Ljava/lang/Object;
    .restart local p1    # "def":I
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 162
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 165
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 166
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getInt(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getInt(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private static getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 150
    .end local v0    # "val":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "val":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
