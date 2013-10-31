.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;
.super Ljava/lang/Object;
.source "BluetoothOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    const-string v0, "SHUZHAO"

    const-string v1, "mAlwaysAllowedValue = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowedValue:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$102(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Z)Z

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "SHUZHAO"

    const-string v1, "mAlwaysAllowedValue = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlwaysAllowedValue:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$102(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;Z)Z

    goto :goto_0
.end method
