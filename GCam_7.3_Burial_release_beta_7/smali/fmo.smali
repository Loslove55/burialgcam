.class final Lfmo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfmp;


# direct methods
.method public constructor <init>(Lfmp;)V
    .locals 0

    iput-object p1, p0, Lfmo;->a:Lfmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfmo;->a:Lfmp;

    iget-object v0, v0, Lfmp;->a:Lfnc;

    invoke-virtual {v0}, Lfnc;->o()V

    iget-object v0, p0, Lfmo;->a:Lfmp;

    iget-object v0, v0, Lfmp;->a:Lfnc;

    invoke-virtual {v0}, Lfnc;->t()V

    return-void
.end method
