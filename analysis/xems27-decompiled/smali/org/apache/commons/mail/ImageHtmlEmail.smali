.class public Lorg/apache/commons/mail/ImageHtmlEmail;
.super Lorg/apache/commons/mail/HtmlEmail;
.source "ImageHtmlEmail.java"


# static fields
.field private static final IMG_PATTERN:Ljava/util/regex/Pattern;

.field public static final REGEX_IMG_SRC:Ljava/lang/String; = "(<[Ii][Mm][Gg]\\s*[^>]*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

.field public static final REGEX_SCRIPT_SRC:Ljava/lang/String; = "(<[Ss][Cc][Rr][Ii][Pp][Tt]\\s*.*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

.field private static final SCRIPT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private dataSourceResolver:Lorg/apache/commons/mail/DataSourceResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-string v0, "(<[Ii][Mm][Gg]\\s*[^>]*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/mail/ImageHtmlEmail;->IMG_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "(<[Ss][Cc][Rr][Ii][Pp][Tt]\\s*.*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/mail/ImageHtmlEmail;->SCRIPT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/commons/mail/HtmlEmail;-><init>()V

    return-void
.end method

.method private replacePattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 10
    .param p1, "htmlMessage"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v1, "cidCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v2, "dataSourceCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/activation/DataSource;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 142
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "resourceLocation":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/mail/ImageHtmlEmail;->getDataSourceResolver()Lorg/apache/commons/mail/DataSourceResolver;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/commons/mail/DataSourceResolver;->resolve(Ljava/lang/String;)Ljavax/activation/DataSource;

    move-result-object v5

    .line 153
    .local v5, "dataSource":Ljavax/activation/DataSource;
    if-eqz v5, :cond_1

    .line 155
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    .end local v5    # "dataSource":Ljavax/activation/DataSource;
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/activation/DataSource;

    .line 163
    .restart local v5    # "dataSource":Ljavax/activation/DataSource;
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    .line 165
    invoke-interface {v5}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 168
    move-object v6, v4

    .line 171
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 173
    .local v7, "cid":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 175
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/mail/ImageHtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 185
    .end local v4    # "resourceLocation":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "cid":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 188
    .end local v5    # "dataSource":Ljavax/activation/DataSource;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 190
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 191
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public buildMimeMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/mail/ImageHtmlEmail;->IMG_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/mail/ImageHtmlEmail;->replacePattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "temp":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/mail/ImageHtmlEmail;->SCRIPT_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/mail/ImageHtmlEmail;->replacePattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 107
    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/ImageHtmlEmail;->setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 108
    invoke-super {p0}, Lorg/apache/commons/mail/HtmlEmail;->buildMimeMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "temp":Ljava/lang/String;
    nop

    .line 114
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Building the MimeMessage failed"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDataSourceResolver()Lorg/apache/commons/mail/DataSourceResolver;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/mail/ImageHtmlEmail;->dataSourceResolver:Lorg/apache/commons/mail/DataSourceResolver;

    return-object v0
.end method

.method public setDataSourceResolver(Lorg/apache/commons/mail/DataSourceResolver;)V
    .locals 0
    .param p1, "dataSourceResolver"    # Lorg/apache/commons/mail/DataSourceResolver;

    .line 90
    iput-object p1, p0, Lorg/apache/commons/mail/ImageHtmlEmail;->dataSourceResolver:Lorg/apache/commons/mail/DataSourceResolver;

    .line 91
    return-void
.end method
