.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;
.super Ljava/lang/Object;
.source "MastogoShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cmd"
.end annotation


# instance fields
.field final kind:I

.field final reply:Ljava/lang/StringBuilder;

.field sentAt:J

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    .line 95
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    .line 96
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    .line 97
    return-void
.end method
