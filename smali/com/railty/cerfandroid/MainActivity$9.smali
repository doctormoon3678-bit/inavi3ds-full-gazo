.class Lcom/railty/cerfandroid/MainActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$9;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 469
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$9;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/MainActivity;->access$3400(Lcom/railty/cerfandroid/MainActivity;Landroid/content/Intent;)V

    .line 470
    return-void
.end method
