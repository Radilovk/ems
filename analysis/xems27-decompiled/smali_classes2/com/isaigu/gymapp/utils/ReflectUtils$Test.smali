.class public Lcom/isaigu/gymapp/utils/ReflectUtils$Test;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/utils/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test"
.end annotation


# static fields
.field private static test:Ljava/lang/String;


# instance fields
.field private a:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    const-string v0, "111"

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;->test:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, "321"

    iput-object v0, p0, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;->value:Ljava/lang/String;

    .line 155
    const/16 v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;->a:I

    return-void
.end method

.method private getValueTest(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "abc"    # Ljava/lang/Integer;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/utils/ReflectUtils$Test;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static operateValue(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 162
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ahaha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private static operateValue1()Ljava/lang/String;
    .locals 2

    .line 166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "operateValue1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    const-string v0, "125"

    return-object v0
.end method
