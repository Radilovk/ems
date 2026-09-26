.class final Lcom/isaigu/gymapp/wearable/HrChartView$XemsUiText;
.super Ljava/lang/Object;
.source "HrChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/HrChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XemsUiText"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static now()Ljava/lang/String;
    .registers 2

    .line 290
    const-string v0, "\u0441\u0435\u0433\u0430"

    const-string v1, "now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static waiting()Ljava/lang/String;
    .registers 2

    .line 294
    const-string v0, "\u0427\u0430\u043a\u0430 \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Waiting for heart rate\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
