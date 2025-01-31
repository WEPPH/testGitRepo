class zcl_singleton definition
  public
  final
  create private    .

  public section.

    methods get_instanse
      importing iv_lgnum           type /scwm/lgnum
      returning value(ro_instanse) type ref to zcl_singleton.

  protected section.

  private section.

    class-data so_instanse type ref to zcl_singleton.

    data mv_lgnum type /scwm/lgnum.

    methods constructor
      importing iv_lgnum type /scwm/lgnum.

endclass.



class zcl_singleton implementation.


  method get_instanse.

    ro_instanse = cond #( when mv_lgnum = iv_lgnum
                          then so_instanse
                          else new #( 'BG03' ) ).

  endmethod.

  method constructor.
    mv_lgnum = iv_lgnum.
  endmethod.

endclass.
