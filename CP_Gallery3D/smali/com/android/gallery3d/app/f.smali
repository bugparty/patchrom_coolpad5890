.class Lcom/android/gallery3d/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic bM:Lcom/android/gallery3d/app/bz;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/gallery3d/app/f;->bM:Lcom/android/gallery3d/app/bz;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/bz;Lcom/android/gallery3d/app/dp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/f;-><init>(Lcom/android/gallery3d/app/bz;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-void

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/f;->bM:Lcom/android/gallery3d/app/bz;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/bz;->a(Lcom/android/gallery3d/app/bz;FFF)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/f;->bM:Lcom/android/gallery3d/app/bz;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/bz;->b(Lcom/android/gallery3d/app/bz;FFF)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
