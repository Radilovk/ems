.class final Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;
.super Ljava/lang/Object;
.source "VrControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Apply"
.end annotation


# instance fields
.field private final arg:I

.field private final op:I

.field private final value:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;->op:I

    .line 111
    iput p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;->arg:I

    .line 112
    iput p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;->value:I

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 118
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;->op:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;->arg:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;->value:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrControl;->apply(III)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 122
    :goto_9
    return-void

    .line 119
    :catch_a
    move-exception v0

    .line 120
    const-string v1, "VrControl"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
