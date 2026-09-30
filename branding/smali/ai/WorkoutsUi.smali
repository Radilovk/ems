.class public final Lcom/isaigu/gymapp/ai/WorkoutsUi;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;
    }
.end annotation


# static fields
.field static final A_ADD_CLEAN:I = 0x14

.field static final A_ADD_EX:I = 0x8

.field static final A_ADD_REST:I = 0x13

.field static final A_BACK:I = 0xc

.field static final A_COPY:I = 0x7

.field static final A_DELETE:I = 0x6

.field static final A_DELETE_SURE:I = 0x12

.field static final A_FOCUS:I = 0xe

.field static final A_GOAL:I = 0xd

.field static final A_NEW:I = 0x1

.field static final A_NEW_PASSIVE:I = 0x19

.field static final A_NO_EX:I = 0x17

.field static final A_OPEN:I = 0x2

.field static final A_PARAM:I = 0x18

.field static final A_PICKED:I = 0x9

.field static final A_PICK_DONE:I = 0xa

.field static final A_PRESET:I = 0x3

.field static final A_REPLACE:I = 0x16

.field static final A_SAVE:I = 0x4

.field static final A_START_AI:I = 0x5

.field static final A_START_MAP:I = 0x15

.field static final A_ZONE:I = 0xf

.field static final EDIT:I = 0x1

.field static final FOCUS:[Ljava/lang/String;

.field static final GOALS:[Ljava/lang/String;

.field static final LIST:I = 0x0

.field static final PICK:I = 0x2

.field static final P_HZ:I = 0x1

.field static final P_OFF:I = 0x4

.field static final P_ON:I = 0x3

.field static final P_PW:I = 0x2

.field static final P_REL:I = 0x5

.field static final P_REPS:I

.field static final ZONES:[Ljava/lang/String;

.field private static confirmDelete:Z

.field private static dirty:Z

.field private static editing:Lcom/isaigu/gymapp/ai/Workout;

.field private static host:Landroid/app/Activity;

.field private static mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

.field private static panel:Landroid/widget/LinearLayout;

.field private static pickGrid:Landroid/widget/LinearLayout;

.field private static preview:Ljava/lang/String;

.field private static query:Ljava/lang/String;

.field private static replaceIndex:I

.field private static saveBtn:Landroid/widget/TextView;

.field private static screen:I

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static summary:Landroid/widget/TextView;

.field private static zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "all"

    aput-object v1, v0, v3

    const-string v1, "abs"

    aput-object v1, v0, v4

    const-string v1, "glutes"

    aput-object v1, v0, v5

    const-string v1, "legs"

    aput-object v1, v0, v6

    const-string v1, "back"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "arms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "shoulders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "stretch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "abs"

    aput-object v1, v0, v3

    const-string v1, "glutes"

    aput-object v1, v0, v4

    const-string v1, "legs"

    aput-object v1, v0, v5

    const-string v1, "arms"

    aput-object v1, v0, v6

    const-string v1, "back"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    .line 69
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "tone"

    aput-object v1, v0, v3

    const-string v1, "fat"

    aput-object v1, v0, v4

    const-string v1, "passive"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    .line 77
    const-string v0, "all"

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    .line 81
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    return p0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    return-object p0
.end method

.method static act(Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;I)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 882
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 883
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    packed-switch v0, :pswitch_data_232

    .line 1037
    :cond_12
    :goto_12
    :pswitch_12
    return-void

    .line 886
    :pswitch_13
    new-instance v4, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 887
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 888
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v5, 0x19

    if-ne v0, v5, :cond_4c

    const-string v0, "passive"

    :goto_26
    iput-object v0, v4, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 889
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 890
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_37
    sput-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 893
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 894
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 895
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 896
    sput v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 897
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_48
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 888
    :cond_4c
    const-string v0, "tone"

    goto :goto_26

    :cond_4f
    move v0, v2

    .line 897
    goto :goto_48

    .line 901
    :pswitch_51
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 902
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 903
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 904
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 905
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 909
    :pswitch_6d
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 910
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 911
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 914
    :pswitch_79
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (\u043c\u043e\u044f)"

    const-string v5, " (mine)"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 915
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 916
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 920
    :pswitch_a9
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-ne v0, v1, :cond_c4

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_c4

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_c4

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 921
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 923
    :cond_c4
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 926
    :pswitch_c9
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 927
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 930
    :pswitch_d1
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 931
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 934
    :pswitch_d8
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 935
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 936
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 939
    :pswitch_e6
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 940
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 941
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 944
    :pswitch_f5
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 945
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    .line 946
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_10a
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 949
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 953
    :pswitch_111
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 954
    sput v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 955
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 958
    :pswitch_11a
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 959
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_12d

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    :goto_126
    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 960
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    :cond_12d
    move v0, v3

    .line 959
    goto :goto_126

    .line 963
    :pswitch_12f
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v2

    .line 964
    if-ltz v2, :cond_12

    .line 965
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 966
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 967
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 968
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 969
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 975
    :pswitch_152
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->insertAt()I

    move-result v2

    .line 976
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v5, 0x13

    if-ne v0, v5, :cond_176

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    :goto_164
    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 977
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 978
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 979
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 980
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 976
    :cond_176
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    goto :goto_164

    .line 984
    :pswitch_17d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v0, v0, p1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 985
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 988
    :pswitch_188
    invoke-static {v4, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V

    goto/16 :goto_12

    .line 991
    :pswitch_18d
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 992
    sput v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 993
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 994
    if-ltz v0, :cond_12

    .line 995
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 996
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1001
    :pswitch_1a0
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_1aa

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v3

    .line 1002
    :cond_1aa
    if-ltz v3, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_12

    .line 1005
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1006
    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v2, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V

    .line 1007
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1009
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1010
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    goto/16 :goto_12

    .line 1014
    :pswitch_1dc
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_1f3

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_1f3

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f3

    .line 1015
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1017
    :cond_1f3
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1018
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 1019
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    .line 1020
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 1023
    :pswitch_202
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_219

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_219

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_219

    .line 1024
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1026
    :cond_219
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_22c

    .line 1028
    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 1030
    :cond_22c
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    goto/16 :goto_12

    .line 883
    nop

    :pswitch_data_232
    .packed-switch 0x1
        :pswitch_13
        :pswitch_51
        :pswitch_6d
        :pswitch_c9
        :pswitch_1dc
        :pswitch_d1
        :pswitch_79
        :pswitch_111
        :pswitch_188
        :pswitch_18d
        :pswitch_12
        :pswitch_a9
        :pswitch_e6
        :pswitch_f5
        :pswitch_17d
        :pswitch_12
        :pswitch_12
        :pswitch_d8
        :pswitch_152
        :pswitch_152
        :pswitch_202
        :pswitch_11a
        :pswitch_12f
        :pswitch_1a0
        :pswitch_13
    .end packed-switch
.end method

.method private static addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 393
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 394
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v1, p3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 396
    if-nez p4, :cond_25

    .line 397
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 399
    :cond_25
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void
.end method

.method static close()V
    .registers 1

    .prologue
    .line 1120
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 1122
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 1126
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1127
    return-void

    .line 1123
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static countIn(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 756
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 757
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_27
    move v1, v0

    .line 759
    goto :goto_a

    .line 760
    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_27
.end method

.method static fillGrid(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 715
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 751
    :cond_b
    :goto_b
    return-void

    .line 718
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 719
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->filtered(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 720
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 721
    const-string v0, "\u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u044a\u0432\u043f\u0430\u0434\u0430."

    const-string v2, "Nothing matches."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 722
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 723
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 724
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 728
    :cond_45
    const/4 v0, 0x0

    move v3, v1

    .line 729
    :goto_47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_93

    .line 730
    rem-int/lit8 v2, v3, 0x4

    if-nez v2, :cond_b9

    .line 731
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 732
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v3, :cond_90

    move v0, v1

    :goto_5a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    :goto_61
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 735
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;

    move-result-object v5

    .line 736
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 737
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 738
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v0, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 740
    rem-int/lit8 v6, v3, 0x4

    if-lez v6, :cond_89

    .line 741
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 743
    :cond_89
    invoke-virtual {v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    add-int/lit8 v3, v3, 0x1

    move-object v0, v2

    goto :goto_47

    .line 732
    :cond_90
    const/16 v0, 0xa

    goto :goto_5a

    .line 745
    :cond_93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v2, 0x4

    move v2, v1

    .line 746
    :goto_9e
    if-ge v2, v3, :cond_b

    if-eqz v0, :cond_b

    .line 747
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 748
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 749
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_b9
    move-object v2, v0

    goto :goto_61
.end method

.method static fillPanel(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/high16 v14, 0x42e00000    # 112.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 449
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_14

    .line 530
    :cond_13
    :goto_13
    return-void

    .line 452
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 453
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v5

    .line 454
    if-ltz v5, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_13

    .line 457
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 458
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 459
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 460
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 461
    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 463
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 464
    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 465
    const v1, -0xedebe6

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v1, v8, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_1eb

    .line 467
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 468
    const-wide/16 v8, 0x0

    iget v10, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 469
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 470
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    :goto_93
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 483
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v8, v1, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 484
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_23d

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v1

    .line 485
    :goto_ad
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_240

    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v9, "Rest"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    :goto_bb
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 488
    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 489
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x41900000    # 18.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v5, v10, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v5, v4, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    if-nez v6, :cond_13c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-nez v2, :cond_13c

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v2

    if-nez v2, :cond_13c

    .line 492
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v2

    if-eqz v2, :cond_25e

    const-string v2, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v5, "Change exercise"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_10c
    invoke-static {p0, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 494
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v10, 0x16

    invoke-direct {v5, v10, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 497
    const-string v2, "\u0411\u0435\u0437"

    const-string v5, "None"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 498
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v10, 0x17

    invoke-direct {v5, v10, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    :cond_13c
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_268

    .line 504
    const-string v2, "\u0411\u0435\u0437 \u0442\u043e\u043a. \u0414\u044a\u043b\u0436\u0438\u043d\u0430\u0442\u0430 \u0435 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0437\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    const-string v5, "No current. Its length is the rest time."

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 506
    :goto_14d
    const/high16 v5, 0x41500000    # 13.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 503
    invoke-static {p0, v2, v5, v9, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 507
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v2, v4, v5, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 508
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    if-nez v6, :cond_1d7

    .line 511
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 512
    if-eqz v1, :cond_2c9

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v1

    if-eqz v1, :cond_2c9

    move v1, v3

    .line 513
    :goto_176
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v5

    if-eqz v5, :cond_2cc

    const-string v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v5, "seconds"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    :goto_184
    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 513
    invoke-static {p0, v2, v1, v5, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 515
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_2f2

    .line 516
    const-string v1, "Hz"

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {p0, v2, v1, v5, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 517
    const-string v1, "\u00b5s"

    iget v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    const/4 v5, 0x2

    invoke-static {p0, v2, v1, v3, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 518
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 519
    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441, \u0441"

    const-string v5, "impulse, s"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {p0, v1, v3, v5, v12}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 520
    const-string v3, "\u043f\u0430\u0443\u0437\u0430, \u0441"

    const-string v5, "pause, s"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    const/4 v6, 0x4

    invoke-static {p0, v1, v3, v5, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 521
    const-string v3, "\u0441\u0438\u043b\u0430, %"

    const-string v5, "strength, %"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    const/4 v5, 0x5

    invoke-static {p0, v1, v3, v0, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 522
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    :cond_1d7
    :goto_1d7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    .line 472
    :cond_1eb
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_233

    const v1, -0xa5a095

    :goto_1f9
    const/high16 v9, 0x41200000    # 10.0f

    .line 474
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    .line 473
    invoke-static {v1, v9, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_23a

    const/high16 v1, 0x41600000    # 14.0f

    :goto_217
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v9, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 476
    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 478
    invoke-static {p0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_93

    .line 473
    :cond_233
    iget v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v1

    goto :goto_1f9

    .line 475
    :cond_23a
    const/high16 v1, 0x428c0000    # 70.0f

    goto :goto_217

    .line 484
    :cond_23d
    const/4 v1, 0x0

    goto/16 :goto_ad

    .line 486
    :cond_240
    if-eqz v1, :cond_248

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    :cond_248
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v2, :cond_254

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    :cond_254
    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 \u0431\u0435\u0437 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v9, "Impulse, no exercise"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    .line 493
    :cond_25e
    const-string v2, "\u0421\u043b\u043e\u0436\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v5, "Set an exercise"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10c

    .line 506
    :cond_268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u0441 \u00b7 "

    const-string v9, " s \u00b7 "

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u00b5s \u00b7 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u0441 \u00b7 \u0441\u0438\u043b\u0430 "

    const-string v9, " s \u00b7 strength "

    .line 506
    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_14d

    :cond_2c9
    move v1, v4

    .line 512
    goto/16 :goto_176

    .line 513
    :cond_2cc
    if-eqz v1, :cond_2d8

    const-string v1, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u044f"

    const-string v5, "holds"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_184

    .line 514
    :cond_2d8
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_2e8

    const-string v1, "\u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v5, "repetitions"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_184

    :cond_2e8
    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v5, "impulses"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_184

    .line 525
    :cond_2f2
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1d7
.end method

.method private static filtered(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 693
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 694
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 695
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 696
    const-string v1, "all"

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->zone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 699
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->tg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 700
    const/4 v1, 0x1

    .line 701
    array-length v8, v5

    move v3, v2

    :goto_78
    if-ge v3, v8, :cond_89

    aget-object v9, v5, v3

    .line 702
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8f

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8f

    move v1, v2

    .line 707
    :cond_89
    if-eqz v1, :cond_1e

    .line 708
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 701
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 711
    :cond_92
    return-object v4
.end method

.method static go(I)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 132
    sput p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 135
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 137
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 138
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    .line 139
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 140
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 141
    if-nez p0, :cond_3b

    .line 142
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenList(Landroid/content/Context;)V

    .line 148
    :goto_29
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 150
    return-void

    .line 143
    :cond_3b
    const/4 v1, 0x1

    if-ne p0, v1, :cond_42

    .line 144
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenEdit(Landroid/content/Context;)V

    goto :goto_29

    .line 146
    :cond_42
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenPick(Landroid/content/Context;)V

    goto :goto_29
.end method

.method static goalColor(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 108
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 110
    :goto_a
    return v0

    .line 109
    :cond_b
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, -0xc28401

    goto :goto_a

    .line 110
    :cond_17
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_a
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_10
    return-object v0

    .line 103
    :cond_11
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v1, "Procedure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 104
    :cond_22
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x0

    move v2, v3

    .line 202
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4f

    .line 203
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_6d

    .line 204
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 205
    if-nez v2, :cond_4c

    const/16 v0, 0x8

    :goto_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    :goto_21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;

    move-result-object v0

    .line 208
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    add-int v5, p4, v2

    invoke-direct {v4, p3, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 210
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_45

    .line 211
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 213
    :cond_45
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_8

    .line 205
    :cond_4c
    const/16 v0, 0xc

    goto :goto_1a

    .line 215
    :cond_4f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_6c

    if-eqz v0, :cond_6c

    .line 216
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 217
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 218
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :cond_6c
    return-void

    :cond_6d
    move-object v1, v0

    goto :goto_21
.end method

.method private static insertAt()I
    .registers 1

    .prologue
    .line 877
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    .line 878
    :goto_a
    if-ltz v0, :cond_11

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    .line 877
    :cond_f
    const/4 v0, -0x1

    goto :goto_a

    .line 878
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e
.end method

.method private static legend(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v6, 0x5

    const/4 v11, 0x1

    const/high16 v10, 0x41380000    # 11.5f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 404
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 405
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 406
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 407
    new-array v4, v6, [I

    fill-array-data v4, :array_de

    .line 408
    new-array v5, v6, [Ljava/lang/String;

    const-string v0, "\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v2, "drainage"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "\u043c\u0430\u0441\u0430\u0436"

    const-string v2, "massage"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    const/4 v0, 0x2

    const-string v2, "\u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v6, "endurance"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    const-string v2, "\u0441\u0438\u043b\u0430"

    const-string v6, "strength"

    .line 409
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x4

    const-string v2, "\u043c\u043e\u0449\u043d\u043e\u0441\u0442"

    const-string v6, "power"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    move v0, v1

    .line 410
    :goto_64
    array-length v2, v4

    if-ge v0, v2, :cond_bd

    .line 411
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 412
    aget v2, v4, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v2

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2, v7, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    if-nez v0, :cond_ba

    const/4 v2, 0x0

    :goto_90
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 415
    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v5, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v2, v10, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 417
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 414
    :cond_ba
    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_90

    .line 419
    :cond_bd
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    const-string v0, "\u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430 = \u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 (\u00b5s)"

    const-string v2, "height = depth (\u00b5s)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v10, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    return-object v3

    .line 407
    :array_de
    .array-data 4
        0x5
        0x14
        0x2d
        0x55
        0x6e
    .end array-data
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 117
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->sync(Landroid/content/Context;Z)V

    .line 120
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 122
    :cond_1a
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 125
    :cond_2d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 129
    :goto_31
    return-void

    .line 126
    :catch_32
    move-exception v0

    .line 127
    const-string v1, "WorkoutsUi.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method private static param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V
    .registers 13

    .prologue
    .line 534
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 535
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 536
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 537
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 538
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 540
    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x26

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 541
    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x26

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 542
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 543
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 544
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v6, 0x18

    invoke-direct {v5, v6, p4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 545
    iput-object v4, v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    .line 546
    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 547
    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 548
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    const/high16 v1, 0x41300000    # 11.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 553
    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 554
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 556
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 557
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    return-void
.end method

.method private static pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/4 v9, 0x1

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x0

    .line 764
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v3

    .line 765
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 766
    if-lez v3, :cond_e3

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v2, 0x3e23d70a    # 0.16f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_1f
    const/high16 v1, 0x41600000    # 14.0f

    .line 767
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v5, v1

    if-lez v3, :cond_e7

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    move v2, v1

    :goto_2b
    if-lez v3, :cond_ec

    const/high16 v1, 0x40000000    # 2.0f

    :goto_2f
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 766
    invoke-static {v0, v5, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 769
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 770
    const v0, -0xedebe6

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 771
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 772
    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 773
    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 774
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 775
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    if-lez v3, :cond_b5

    .line 777
    if-le v3, v9, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u00d7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_97
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 778
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v2, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 780
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 781
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 782
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    :cond_b5
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 785
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 786
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 787
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 788
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    const/high16 v1, 0x41380000    # 11.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 791
    return-object v4

    .line 766
    :cond_e3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto/16 :goto_1f

    .line 767
    :cond_e7
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto/16 :goto_2b

    :cond_ec
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2f

    .line 777
    :cond_f0
    const-string v0, "\u2713"

    goto :goto_97
.end method

.method private static picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1052
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v3

    .line 1053
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_4b

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-ltz v0, :cond_4b

    .line 1054
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1055
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 1056
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1057
    const/16 v2, 0x64

    iput v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 1058
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 1060
    :cond_38
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1061
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1062
    const/4 v2, -0x1

    sput v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1063
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1064
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1065
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 1092
    :goto_4a
    return-void

    .line 1068
    :cond_4b
    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-gez v0, :cond_d4

    .line 1069
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5a
    if-ltz v2, :cond_a6

    .line 1070
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1071
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1072
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1073
    if-lez v2, :cond_a6

    add-int/lit8 v0, v2, -0x1

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a6

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1074
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1079
    :cond_a6
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d2

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_b0
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1088
    :goto_b2
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1089
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1090
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1091
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4a

    .line 1069
    :cond_ce
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5a

    .line 1079
    :cond_d2
    const/4 v0, 0x0

    goto :goto_b0

    .line 1081
    :cond_d4
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    if-eqz v3, :cond_123

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    move-object v2, v0

    :goto_db
    if-eqz v3, :cond_12b

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_12b

    move v0, v1

    :goto_e4
    invoke-static {v4, v2, v0}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 1082
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_117

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_117

    .line 1083
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_117
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    goto :goto_b2

    .line 1081
    :cond_123
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_db

    :cond_12b
    const/4 v0, 0x0

    goto :goto_e4
.end method

.method private static presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 7

    .prologue
    .line 1041
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    .line 1042
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 1045
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v1, v2

    :goto_25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_29
    move-object v1, v3

    goto :goto_25

    .line 1047
    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_38

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    :goto_37
    return-object v0

    :cond_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    goto :goto_37
.end method

.method private static previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 796
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v1

    .line 797
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 798
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 799
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 800
    const v3, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    new-instance v3, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 802
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 803
    invoke-virtual {v3, p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 804
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x432a0000    # 170.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 807
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 808
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    const/high16 v4, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 809
    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    const/high16 v1, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 810
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v7, v1, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 811
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 812
    const-string v0, "\u041c\u0430\u0445\u043d\u0438 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "Remove the last set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 813
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 814
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 815
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    return-object v2

    .line 808
    :cond_ba
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 809
    :cond_bf
    const-string v0, ""

    goto :goto_6d
.end method

.method static refreshFooter()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 616
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v1, :cond_9

    sget v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-eq v1, v0, :cond_a

    .line 625
    :cond_9
    :goto_9
    return-void

    .line 619
    :cond_a
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_39

    .line 620
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    :goto_27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 622
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 624
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    goto :goto_9

    .line 621
    :cond_3d
    const/4 v0, 0x0

    goto :goto_27

    .line 622
    :cond_3f
    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_36
.end method

.method static refreshSummary()V
    .registers 5

    .prologue
    .line 425
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_9

    .line 445
    :cond_8
    :goto_8
    return-void

    .line 428
    :cond_9
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 430
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0431\u043b\u043e\u043a\u0430 \u00b7 "

    const-string v3, " blocks \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :goto_44
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->longerThanSession()Z

    move-result v2

    if-eqz v2, :cond_102

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u0421 AI \u0435 \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043e\u0442 \u0435\u0434\u043d\u0430 \u0441\u0435\u0441\u0438\u044f ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d): \u043c\u0438\u043d\u0430\u0432\u0430\u0442 \u0441\u0435\u0440\u0438\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0441\u0435 \u043f\u043e\u0431\u0435\u0440\u0430\u0442."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nWith AI it is longer than one session ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 439
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " min): the sets that fit are done."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    :goto_a0
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 433
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->distinctExercises()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u00b7 "

    const-string v3, " exercises \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438 \u00b7 \u043f\u043e \u043a\u0430\u0440\u0442\u0430\u0442\u0430 "

    const-string v3, " sets \u00b7 by the map "

    .line 434
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d \u00b7 \u0441 AI \u2248 "

    const-string v3, " min \u00b7 with AI \u2248 "

    .line 435
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 442
    :cond_102
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a0
.end method

.method private static save(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 1110
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_45

    .line 1111
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "d.MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1112
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430 "

    const-string v4, "Procedure "

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1113
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 1115
    :cond_45
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1117
    return-void

    .line 1112
    :cond_4e
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v4, "Workout "

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method private static screenEdit(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v1, 0x2

    const/4 v13, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    sget-object v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 252
    iget-boolean v7, v6, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 253
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v7, :cond_125

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    :goto_12
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v7, :cond_14b

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u043a\u043e\u043f\u0438\u0440\u0430\u0439 \u044f, \u0437\u0430 \u0434\u0430 \u044f \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0448."

    const-string v8, "Ready map \u2014 copy it to change it."

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 261
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 262
    const/16 v0, 0x10

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    if-nez v7, :cond_16f

    .line 264
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 266
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_155

    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u041b\u0435\u043a \u0434\u0440\u0435\u043d\u0430\u0436\u201c"

    const-string v10, "Name, e.g. \u201cLight drainage\u201d"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_57
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 269
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 270
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 271
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 272
    const/16 v0, 0x4001

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 273
    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 274
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41300000    # 11.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 276
    new-instance v0, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;-><init>()V

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    .line 279
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_15f

    move v0, v1

    .line 280
    :goto_db
    new-instance v10, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v11, 0xd

    invoke-direct {v10, v11, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-static {p0, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 281
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x43dc0000    # 440.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 283
    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :goto_fc
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 290
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v0, v3

    .line 291
    :goto_10f
    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_1b0

    .line 292
    iget-object v9, v6, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    sget-object v10, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 293
    if-eqz v7, :cond_184

    if-nez v9, :cond_184

    .line 291
    :goto_122
    add-int/lit8 v0, v0, 0x1

    goto :goto_10f

    .line 253
    :cond_125
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_131

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    goto/16 :goto_12

    .line 254
    :cond_131
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_141

    const-string v0, "\u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v8, "New procedure"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_141
    const-string v0, "\u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v8, "New workout"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 256
    :cond_14b
    const-string v0, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0431\u043b\u043e\u043a \u00b7 \u0432\u043b\u0430\u0447\u0438 \u0440\u044a\u0431\u0430 \u043c\u0443 \u0437\u0430 \u0434\u044a\u043b\u0436\u0438\u043d\u0430 \u00b7 \u0437\u0430\u0434\u0440\u044a\u0436 \u0438 \u0432\u043b\u0430\u0447\u0438 \u0437\u0430 \u043c\u044f\u0441\u0442\u043e \u00b7 + \u043a\u043b\u043e\u043d\u0438\u0440\u0430 \u00b7 \u2212 \u043c\u0430\u0445\u0430"

    const-string v8, "Tap a block \u00b7 drag its edge for length \u00b7 hold and drag to move \u00b7 + clones \u00b7 \u2212 removes"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 268
    :cond_155
    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u201c"

    const-string v10, "Name, e.g. \u201cStrong glutes\u201d"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 279
    :cond_15f
    const-string v0, "fat"

    iget-object v10, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    move v0, v2

    goto/16 :goto_db

    :cond_16c
    move v0, v3

    goto/16 :goto_db

    .line 285
    :cond_16f
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_fc

    .line 296
    :cond_184
    sget-object v10, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v10, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v9

    .line 297
    if-nez v7, :cond_19e

    .line 298
    new-instance v10, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v11, 0xe

    invoke-direct {v10, v11, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_19e
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 303
    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_122

    .line 305
    :cond_1b0
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1bf

    .line 306
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    :cond_1bf
    const-string v0, ""

    const/high16 v8, 0x41580000    # 13.5f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 311
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    const/16 v8, 0xa

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    .line 315
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 317
    const v0, -0xedebe6

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v9, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 319
    new-instance v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 320
    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-nez v7, :cond_45d

    move v0, v2

    :goto_219
    invoke-virtual {v9, v6, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 321
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v9, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;-><init>()V

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setListener(Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;)V

    .line 322
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x437a0000    # 250.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legend(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 326
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_460

    .line 327
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0441\u043b\u043e\u0436\u0438 \u043f\u044a\u0440\u0432\u0438\u044f \u0431\u043b\u043e\u043a."

    const-string v8, "An empty map \u2014 place the first block."

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_261
    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 326
    invoke-static {p0, v0, v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 330
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v3, v8, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :cond_27e
    if-nez v7, :cond_2c1

    .line 336
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 337
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_297

    .line 338
    const-string v0, "+  \u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v9, "+  Exercise"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x8

    invoke-static {p0, v8, v0, v9, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 340
    :cond_297
    const-string v0, "+  \u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v9, "+  Rest"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x13

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_46a

    move v0, v2

    :goto_2a8
    invoke-static {p0, v8, v9, v10, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 341
    const-string v0, "+  \u041d\u043e\u0432 \u0431\u043b\u043e\u043a"

    const-string v9, "+  New block"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x14

    invoke-static {p0, v8, v0, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 342
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_2c1
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 346
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    const/16 v8, 0xc

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    if-gez v0, :cond_2e9

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e9

    if-nez v7, :cond_2e9

    .line 348
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 350
    :cond_2e9
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 353
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v5, "\u2039  Back"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 354
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0xc

    invoke-direct {v5, v8, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    if-nez v7, :cond_355

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_355

    .line 357
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_46d

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439 \u0437\u0430\u0432\u0438\u043d\u0430\u0433\u0438"

    const-string v5, "Delete for good"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_32b
    const/4 v5, 0x3

    .line 357
    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 359
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_477

    const/16 v0, 0x12

    :goto_33d
    invoke-direct {v8, v0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    :cond_355
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    if-eqz v7, :cond_47a

    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v5, "Copy and change"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_370
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 366
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    if-eqz v7, :cond_492

    const/4 v0, 0x7

    :goto_379
    invoke-direct {v8, v0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    if-nez v7, :cond_38d

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_495

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_495

    :cond_38d
    move v0, v2

    :goto_38e
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 368
    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_498

    move v0, v4

    :goto_398
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 369
    if-eqz v7, :cond_49d

    const/4 v0, 0x0

    :goto_39e
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    .line 370
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x43520000    # 210.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a0

    move v0, v2

    .line 372
    :goto_3c1
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v5

    if-eqz v5, :cond_4a3

    const-string v5, "\u25b6  \u041f\u0443\u0441\u043d\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v7, "\u25b6  Run the map"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    :goto_3cf
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v7

    if-eqz v7, :cond_3d6

    move v1, v3

    .line 372
    :cond_3d6
    invoke-static {p0, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 374
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x15

    invoke-direct {v5, v7, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 376
    if-eqz v0, :cond_4ad

    move v0, v4

    :goto_3ea
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 377
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_4b2

    const/high16 v0, 0x43820000    # 260.0f

    :goto_3f7
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v7, 0x42580000    # 54.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 379
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_45c

    .line 381
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-lez v0, :cond_4b6

    .line 382
    :goto_41f
    const-string v0, "\u25b6  \u0421 AI"

    const-string v1, "\u25b6  With AI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v5, 0x5

    invoke-direct {v1, v5, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 385
    if-eqz v2, :cond_4b9

    :goto_439
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 386
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 388
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    :cond_45c
    return-void

    :cond_45d
    move v0, v3

    .line 320
    goto/16 :goto_219

    .line 328
    :cond_460
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435."

    const-string v8, "An empty map \u2014 add the first exercise."

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_261

    :cond_46a
    move v0, v3

    .line 340
    goto/16 :goto_2a8

    .line 358
    :cond_46d
    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v5, "Delete"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_32b

    .line 360
    :cond_477
    const/4 v0, 0x6

    goto/16 :goto_33d

    .line 365
    :cond_47a
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_488

    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v5, "Save"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_370

    :cond_488
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713"

    const-string v5, "Saved \u2713"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_370

    .line 366
    :cond_492
    const/4 v0, 0x4

    goto/16 :goto_379

    :cond_495
    move v0, v3

    .line 367
    goto/16 :goto_38e

    .line 368
    :cond_498
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_398

    :cond_49d
    move-object v0, v5

    .line 369
    goto/16 :goto_39e

    :cond_4a0
    move v0, v3

    .line 371
    goto/16 :goto_3c1

    .line 373
    :cond_4a3
    const-string v5, "\u25b6  \u041f\u043e \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v7, "\u25b6  By the map"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3cf

    .line 376
    :cond_4ad
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_3ea

    .line 377
    :cond_4b2
    const/high16 v0, 0x43520000    # 210.0f

    goto/16 :goto_3f7

    :cond_4b6
    move v2, v3

    .line 381
    goto/16 :goto_41f

    .line 385
    :cond_4b9
    const v4, 0x3f0ccccd    # 0.55f

    goto/16 :goto_439
.end method

.method private static screenList(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x42600000    # 56.0f

    const/4 v7, 0x0

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v2, "Workouts"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441\u043d\u0438 \u043a\u0430\u0440\u0442\u0438: \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435 \u0441\u0430 \u0441\u0435\u0440\u0438\u0438\u0442\u0435 \u043d\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u2014 \u0434\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0432\u0438\u0434\u0438\u0448 \u0438\u043b\u0438 \u043f\u0443\u0441\u043d\u0435\u0448."

    const-string v2, "Impulse maps: the blocks are the exercise sets \u2014 tap to see or start."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 161
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 162
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 163
    const-string v0, "\u0422\u0432\u043e\u0438\u0442\u0435"

    const-string v1, "Yours"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-static {p0, v4, v5, v10, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 166
    :cond_50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 169
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_79

    move-object v1, v2

    :goto_75
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_79
    move-object v1, v3

    goto :goto_75

    .line 171
    :cond_7b
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v1, "Ready \u00b7 with exercises"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 172
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a1

    const/4 v0, 0x6

    :goto_8e
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 171
    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-static {p0, v4, v3, v11, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 174
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 175
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v1, "Ready \u00b7 procedures at rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x12

    .line 176
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 175
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v4, v2, v11, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 180
    :cond_ba
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0430: "

    const-string v5, "Exercises in the catalog: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    if-lez v1, :cond_1a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u043e\u0449\u0435 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f\u0442"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " more downloading"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 182
    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 185
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    const-string v0, "+  \u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v1, "+  Procedure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const-string v1, "+  \u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "+  New workout"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 191
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v2, v9, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x435c0000    # 220.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 196
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-void

    .line 172
    :cond_1a1
    const/16 v0, 0x12

    goto/16 :goto_8e

    .line 183
    :cond_1a5
    const-string v0, ""

    goto/16 :goto_113
.end method

.method private static screenPick(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 647
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_d4

    move v0, v1

    .line 648
    :goto_d
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    const-string v3, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v5, "Change the exercise"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_e1

    const-string v3, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043d\u043e\u0432\u043e\u0442\u043e \u2014 \u0431\u043b\u043e\u043a\u044a\u0442 \u0437\u0430\u043f\u0430\u0437\u0432\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u0438."

    const-string v5, "Tap the new one \u2014 the block keeps its impulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 656
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 658
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 659
    const-string v5, "\u0422\u044a\u0440\u0441\u0438: \u043a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u0440\u044a\u0431\u2026"

    const-string v6, "Search: squat, lunge, back\u2026"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 660
    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 661
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 662
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 663
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 664
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 666
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 667
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    new-array v5, v1, [Landroid/widget/LinearLayout;

    .line 670
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v3, v2

    .line 671
    :goto_a5
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_eb

    .line 672
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v8, v8, v3

    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 673
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v9, 0xf

    invoke-direct {v8, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    aget-object v8, v5, v2

    invoke-static {p0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 671
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_d4
    move v0, v2

    .line 647
    goto/16 :goto_d

    .line 649
    :cond_d7
    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "Add exercises"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b

    .line 651
    :cond_e1
    const-string v3, "\u0412\u0441\u044f\u043a\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435 \u0441\u043b\u0430\u0433\u0430 \u0441\u0435\u0440\u0438\u044f \u043d\u0430 \u043b\u0438\u043d\u0438\u044f\u0442\u0430 (\u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043f\u0440\u0435\u0434\u0438 \u043d\u0435\u044f) \u2014 \u043e\u0442\u0434\u043e\u043b\u0443 \u0435 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435\u0442\u043e."

    const-string v5, "Each tap puts a set on the line (a rest before it) \u2014 the description is below."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 676
    :cond_eb
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    if-eqz v3, :cond_107

    .line 679
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    :cond_107
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 682
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillGrid(Landroid/content/Context;)V

    .line 685
    if-eqz v0, :cond_15d

    const-string v0, "\u041d\u0430\u0437\u0430\u0434 \u043a\u044a\u043c \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v3, "Back to the map"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_125
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 687
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    return-void

    .line 686
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 "

    const-string v4, "Done \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0441\u0435\u0440\u0438\u0438"

    const-string v4, " sets"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_125
.end method

.method static step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V
    .registers 8

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 562
    packed-switch p1, :pswitch_data_4a

    .line 579
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/lit8 v1, p2, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 582
    :goto_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 583
    return-void

    .line 564
    :pswitch_10
    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_18
    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_c

    :cond_1d
    move v0, v1

    goto :goto_18

    .line 567
    :pswitch_1f
    iget v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    if-lez p2, :cond_31

    const/4 v2, 0x0

    :goto_26
    add-int/2addr v2, v4

    const/16 v4, 0x14

    if-ge v2, v4, :cond_33

    :goto_2b
    mul-int v0, p2, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_c

    :cond_31
    const/4 v2, -0x1

    goto :goto_26

    :cond_33
    move v1, v0

    goto :goto_2b

    .line 570
    :pswitch_35
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    mul-int/lit8 v1, p2, 0x19

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_c

    .line 573
    :pswitch_3d
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_c

    .line 576
    :pswitch_43
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_c

    .line 562
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1f
        :pswitch_35
        :pswitch_3d
        :pswitch_43
    .end packed-switch
.end method

.method static valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I
    .registers 3

    .prologue
    .line 586
    packed-switch p1, :pswitch_data_16

    .line 592
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    :goto_5
    return v0

    .line 587
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_5

    .line 588
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_5

    .line 589
    :pswitch_c
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_5

    .line 590
    :pswitch_f
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_5

    .line 591
    :pswitch_12
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_5

    .line 586
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private static workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 224
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 225
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 227
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 228
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    const v2, -0xedebe6

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v2, p1, v6}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 235
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0431\u043b\u043e\u043a\u0430 \u00b7 "

    const-string v3, " blocks \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_ac
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 242
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 243
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 245
    return-object v1

    .line 240
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->distinctExercises()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u043f\u0440. \u00b7 "

    const-string v3, " ex. \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438 \u00b7 \u2248 "

    const-string v3, " sets \u00b7 \u2248 "

    .line 240
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ac
.end method

.method static zoneName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041a\u043e\u0440\u0435\u043c"

    const-string v1, "Abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_10
    return-object v0

    .line 90
    :cond_11
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v1, "Glutes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 91
    :cond_22
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0411\u0435\u0434\u0440\u0430"

    const-string v1, "Legs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 92
    :cond_33
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0413\u0440\u044a\u0431"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 93
    :cond_44
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0413\u044a\u0440\u0434\u0438"

    const-string v1, "Chest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 94
    :cond_55
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v1, "Arms"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 95
    :cond_66
    const-string v0, "shoulders"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u0420\u0430\u043c\u0435\u043d\u0435"

    const-string v1, "Shoulders"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 96
    :cond_77
    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u041a\u0430\u0440\u0434\u0438\u043e"

    const-string v1, "Cardio"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 97
    :cond_88
    const-string v0, "stretch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u0420\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Stretching"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 98
    :cond_9a
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method
