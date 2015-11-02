<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Prescription extends CI_Model {

    function callback_add_field_DX_and_RX() {
        return "<textarea id='field-DX_and_RX' name='DX_and_RX' class='texteditor' >
            <table align='center' border='1' cellpadding='1' cellspacing='1' height='176' width='548'>
                <thead style='background:#3DB2EC; color:white;'>
                        <tr>
                                <th scope='col'>
                                        DX</th>
                                <th scope='col'>
                                        RX</th>
                        </tr>
                </thead>
                <tbody>
                        <tr>
                                <td>
                                        &nbsp;</td>
                                <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                                <td>
                                        &nbsp;</td>
                                <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                                <td>
                                        &nbsp;</td>
                                <td>
                                        &nbsp;</td>
                        </tr>
                        <tr>
                                <td>
                                        &nbsp;</td>
                                <td>
                                        &nbsp;</td>
                        </tr>
                </tbody>
            </table>
        </textarea>";
    }

}
