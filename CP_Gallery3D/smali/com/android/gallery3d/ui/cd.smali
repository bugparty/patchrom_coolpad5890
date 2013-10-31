.class public Lcom/android/gallery3d/ui/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static uX:Lcom/android/gallery3d/ui/eu;


# instance fields
.field private uY:Lcom/android/gallery3d/ui/az;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/am;Lcom/android/gallery3d/ui/bt;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/q;

    invoke-direct {v0, p1, p3}, Lcom/android/gallery3d/ui/q;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/bt;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    sparse-switch p1, :sswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 94
    :sswitch_0
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_1
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :sswitch_2
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :sswitch_3
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :sswitch_4
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :sswitch_5
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :sswitch_6
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :sswitch_7
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :sswitch_8
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :sswitch_9
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :sswitch_a
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :sswitch_b
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :sswitch_c
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :sswitch_d
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :sswitch_e
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :sswitch_f
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :sswitch_10
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :sswitch_11
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :sswitch_12
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Lcom/android/gallery3d/app/bm;[DLcom/android/gallery3d/ui/dj;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/android/gallery3d/ui/cd;->uX:Lcom/android/gallery3d/ui/eu;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/eu;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/eu;-><init>(Lcom/android/gallery3d/app/bm;)V

    sput-object v0, Lcom/android/gallery3d/ui/cd;->uX:Lcom/android/gallery3d/ui/eu;

    .line 76
    :goto_0
    sget-object v0, Lcom/android/gallery3d/ui/cd;->uX:Lcom/android/gallery3d/ui/eu;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/eu;->a([DLcom/android/gallery3d/ui/dj;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ui/cd;->uX:Lcom/android/gallery3d/ui/eu;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eu;->cancel()V

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/gallery3d/ui/cd;->uX:Lcom/android/gallery3d/ui/eu;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/ui/cd;->uX:Lcom/android/gallery3d/ui/eu;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eu;->cancel()V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/ea;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/az;->a(Lcom/android/gallery3d/ui/ea;)V

    .line 67
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/az;->hide()V

    .line 89
    return-void
.end method

.method public layout(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    instance-of v0, v0, Lcom/android/gallery3d/ui/am;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    check-cast v0, Lcom/android/gallery3d/ui/am;

    .line 55
    sub-int v1, p4, p2

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/ui/am;->measure(II)V

    .line 57
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/gallery3d/ui/am;->layout(IIII)V

    .line 59
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/az;->show()V

    .line 85
    return-void
.end method

.method public w(I)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/cd;->uY:Lcom/android/gallery3d/ui/az;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/az;->w(I)V

    .line 63
    return-void
.end method
