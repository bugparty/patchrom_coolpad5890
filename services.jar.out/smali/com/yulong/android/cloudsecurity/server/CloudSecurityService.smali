.class public Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;
.super Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;
.source "CloudSecurityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudSecurity"

.field private static pContext:Landroid/content/Context;

.field private static pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    .line 35
    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;-><init>()V

    .line 41
    sput-object p1, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    .line 43
    return-void
.end method

.method public static getPermissionFilterInstance()Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    .line 54
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    return-object v0
.end method


# virtual methods
.method public deleteAll()Z
    .locals 2

    .prologue
    .line 198
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService--deleteAll"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService deleteAll()---pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->deleteAllData()Z

    move-result v0

    goto :goto_0
.end method

.method public deleteAppPermissionBean([Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z
    .locals 2
    .parameter "apbs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService deleteAppPermissionBean()----"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService deleteAppPermissionBean()---apbs or pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->deleteData([Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v0

    goto :goto_0
.end method

.method public insertAppPermissionBean(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, apbs:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSecurityService instertAppPermissionBean()------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService instertAppPermissionBean()---apbs or pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->insertData(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public startDataProSwitch(Z)V
    .locals 3
    .parameter "dataProSwitch"

    .prologue
    .line 126
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSecurityService startDataProSwitch()----dataProSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService startDataProSwitch()---pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->setDataProSwitch(Z)V

    goto :goto_0
.end method

.method public startMoneyProSwitch(Z)V
    .locals 3
    .parameter "moneyProSwitch"

    .prologue
    .line 140
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSecurityService startMoneyProSwitch()----moneyProSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService startMoneyProSwitch()---pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->setMoneyProSwitch(Z)V

    goto :goto_0
.end method

.method public startPermFilter(Z)V
    .locals 3
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSecurityService startPermFilter()----flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 114
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService startPermFilter()---pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->setSwitchFlag(Z)V

    goto :goto_0
.end method

.method public startPugProSwitch(Z)V
    .locals 3
    .parameter "pugProSwitch"

    .prologue
    .line 168
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSecurityService startPugProSwitch()----pugProSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 171
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService startPugProSwitch()---pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->setPugProSwitch(Z)V

    goto :goto_0
.end method

.method public startlistenProSwitch(Z)V
    .locals 3
    .parameter "listenProSwitch"

    .prologue
    .line 154
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSecurityService startlistenProSwitch()----listenProSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService startlistenProSwitch()---pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->setListenProSwitch(Z)V

    goto :goto_0
.end method

.method public updateAll(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z
    .locals 2
    .parameter "apb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService--udatteAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 185
    :cond_0
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService updateAll()---pf or apb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->updateAllData(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateAppPermissionBean(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, apbs:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService--updateAppPermissionBean()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    const-string v0, "CloudSecurity"

    const-string v1, "CloudSecurityService updateAppPermissionBean()---apbs or pf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityService;->pf:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->updateData(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method
