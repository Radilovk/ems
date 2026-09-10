.class public Lcom/isaigu/gymapp/utils/DateNullAdapterFactory;
.super Ljava/lang/Object;
.source "DateNullAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/TypeAdapterFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    .local p0, "this":Lcom/isaigu/gymapp/utils/DateNullAdapterFactory;, "Lcom/isaigu/gymapp/utils/DateNullAdapterFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/isaigu/gymapp/utils/DateNullAdapterFactory;, "Lcom/isaigu/gymapp/utils/DateNullAdapterFactory<TT;>;"
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 15
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_0

    .line 16
    const/4 v1, 0x0

    return-object v1

    .line 18
    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/utils/DateNullAdapter;

    invoke-direct {v1}, Lcom/isaigu/gymapp/utils/DateNullAdapter;-><init>()V

    return-object v1
.end method
