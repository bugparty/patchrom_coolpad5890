.class Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;
.super Ljava/lang/Object;
.source "PermissionFilter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;


# direct methods
.method constructor <init>(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;->this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;->this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-static {p2}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    move-result-object v1

    #setter for: Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
    invoke-static {v0, v1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->access$002(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    .line 158
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;->this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    #getter for: Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
    invoke-static {v2}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->access$000(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 151
    const-string v0, "CloudSecurity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;->this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    const/4 v1, 0x0

    #setter for: Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
    invoke-static {v0, v1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->access$002(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    .line 153
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;->this$0:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    #calls: Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->bindAppPermAlertService()V
    invoke-static {v0}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->access$100(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)V

    .line 154
    return-void
.end method
