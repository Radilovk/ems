.class final Lcom/isaigu/gymapp/utils/ReflectionUtils$2;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/utils/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 30
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
