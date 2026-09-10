.class final Lcom/isaigu/gymapp/utils/ReflectionUtils$6;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/ReflectionUtils;->shallowCopyFieldState(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dest:Ljava/lang/Object;

.field final synthetic val$src:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$6;->val$src:Ljava/lang/Object;

    iput-object p2, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$6;->val$dest:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWith(Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 498
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->makeAccessible(Ljava/lang/reflect/Field;)V

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$6;->val$src:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 500
    .local v0, "srcValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$6;->val$dest:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    return-void
.end method
