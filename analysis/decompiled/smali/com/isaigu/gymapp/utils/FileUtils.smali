.class public Lcom/isaigu/gymapp/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static encryptKey:Ljava/lang/String;

.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "54ef5df9a9ef5dfs630kddlfl"

    sput-object v0, Lcom/isaigu/gymapp/utils/FileUtils;->encryptKey:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/isaigu/gymapp/utils/DateNullAdapterFactory;

    invoke-direct {v1}, Lcom/isaigu/gymapp/utils/DateNullAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/utils/FileUtils;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "string":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v3, Lcom/isaigu/gymapp/utils/FileUtils;->encryptKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/XXTEATool;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    sget-object v3, Lcom/isaigu/gymapp/utils/FileUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "object":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v5, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {v5, p0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 105
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "string":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :cond_1
    return-object v0

    .line 110
    :cond_2
    sget-object v5, Lcom/isaigu/gymapp/utils/FileUtils;->encryptKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/XXTEATool;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    sget-object v5, Lcom/isaigu/gymapp/utils/FileUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->getArray(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 112
    .local v2, "object":[Ljava/lang/Object;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 114
    .local v1, "obj":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static initConext(Landroid/content/Context;)V
    .locals 0
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 25
    sput-object p0, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static removeData(Ljava/lang/Class;)V
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/FileUtils;->removeData(Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    return-void
.end method

.method public static removeData(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v2, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveData(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v4, Lcom/isaigu/gymapp/utils/FileUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "string":Ljava/lang/String;
    sget-object v4, Lcom/isaigu/gymapp/utils/FileUtils;->encryptKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/XXTEATool;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "encry":Ljava/lang/String;
    sget-object v4, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-virtual {v4, p0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 41
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public static saveListData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p2, :cond_0

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v4, Lcom/isaigu/gymapp/utils/FileUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "string":Ljava/lang/String;
    sget-object v4, Lcom/isaigu/gymapp/utils/FileUtils;->encryptKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/XXTEATool;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "encry":Ljava/lang/String;
    sget-object v4, Lcom/isaigu/gymapp/utils/FileUtils;->context:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-virtual {v4, p0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
