.class public final Lcom/isaigu/gymapp/widget/XemsSearch;
.super Ljava/lang/Object;
.source "XemsSearch.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 19
    if-nez p1, :cond_5

    .line 29
    :cond_4
    :goto_4
    return v0

    .line 22
    :cond_5
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsSearch;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 26
    if-nez p0, :cond_13

    move v0, v1

    .line 27
    goto :goto_4

    .line 29
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsSearch;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
