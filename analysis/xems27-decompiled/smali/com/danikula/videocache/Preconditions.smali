.class public final Lcom/danikula/videocache/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkAllNotNull([Ljava/lang/Object;)V
    .locals 3
    .param p0, "references"    # [Ljava/lang/Object;

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 14
    .local v2, "reference":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 13
    .end local v2    # "reference":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .restart local v2    # "reference":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    throw v0

    .line 18
    .end local v2    # "reference":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static checkArgument(Z)V
    .locals 1
    .param p0, "expression"    # Z

    .line 28
    if-eqz p0, :cond_0

    .line 31
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static checkArgument(ZLjava/lang/String;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 34
    if-eqz p0, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 6
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 9
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 21
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 24
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
