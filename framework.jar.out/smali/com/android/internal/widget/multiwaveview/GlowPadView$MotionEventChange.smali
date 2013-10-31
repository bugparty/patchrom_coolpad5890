.class Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;
.super Ljava/lang/Object;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventChange"
.end annotation


# instance fields
.field downPointerId:I

.field pointerX:F

.field pointerY:F

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1595
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->pointerX:F

    .line 1597
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->pointerY:F

    .line 1598
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->downPointerId:I

    return-void
.end method


# virtual methods
.method getMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 19
    .parameter "ev"

    .prologue
    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1601
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->downPointerId:I

    .line 1603
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 1604
    .local v7, pointerCount:I
    new-array v8, v7, [Landroid/view/MotionEvent$PointerProperties;

    .line 1605
    .local v8, pointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    new-array v9, v7, [Landroid/view/MotionEvent$PointerCoords;

    .line 1606
    .local v9, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_2

    .line 1608
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v18

    .line 1609
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1611
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v18

    .line 1612
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1614
    aget-object v2, v8, v18

    iget v2, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->downPointerId:I

    if-ne v2, v3, :cond_1

    .line 1615
    aget-object v2, v9, v18

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->pointerX:F

    .line 1616
    aget-object v2, v9, v18

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->pointerY:F

    .line 1606
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1620
    :cond_2
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v0, v7, :cond_4

    .line 1621
    aget-object v2, v8, v18

    iget v2, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->downPointerId:I

    if-eq v2, v3, :cond_3

    .line 1622
    aget-object v2, v9, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->pointerX:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1623
    aget-object v2, v9, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView$MotionEventChange;->pointerY:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1620
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1627
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method
